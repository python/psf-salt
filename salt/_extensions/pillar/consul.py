import base64
import os
import os.path
import uuid


def _secure_open_write(filename, fmode):
    # We only want to write to this file, so open it in write only mode
    flags = os.O_WRONLY

    # os.O_CREAT | os.O_EXCL will fail if the file already exists, so we only
    #  will open *new* files.
    # We specify this because we want to ensure that the mode we pass is the
    # mode of the file.
    flags |= os.O_CREAT | os.O_EXCL

    # Do not follow symlinks to prevent someone from making a symlink that
    # we follow and insecurely open a cache file.
    if hasattr(os, "O_NOFOLLOW"):
        flags |= os.O_NOFOLLOW

    # On Windows we'll mark this file as binary
    if hasattr(os, "O_BINARY"):
        flags |= os.O_BINARY

    # Before we open our file, we want to delete any existing file that is
    # there
    try:
        os.remove(filename)
    except (IOError, OSError):
        # The file must not exist already, so we can just skip ahead to opening
        pass

    # Open our file, the use of os.O_CREAT | os.O_EXCL will ensure that if a
    # race condition happens between the os.remove and this line, that an
    # error will be raised.
    fd = os.open(filename, flags, fmode)
    try:
        return os.fdopen(fd, "wb")
    except:
        # An error occurred wrapping our FD in a file object
        os.close(fd)
        raise


def _encryption_key(key_path):
    if not os.path.exists(key_path):
        data = base64.b64encode(os.urandom(16))

        if not os.path.exists(os.path.dirname(key_path)):
            os.makedirs(os.path.dirname(key_path))

        with _secure_open_write(key_path, 0o0600) as fp:
            fp.write(data)
    else:
        with open(key_path) as fp:
            data = fp.read()

    return data


def _master_acl(acl_path):
    if not os.path.exists(acl_path):
        data = str(uuid.uuid4())

        if not os.path.exists(os.path.dirname(acl_path)):
            os.makedirs(os.path.dirname(acl_path))

        with _secure_open_write(acl_path, 0o0600) as fp:
            fp.write(data)
    else:
        with open(acl_path) as fp:
            data = fp.read()

    return data


def ext_pillar(minion_id, pillar, key_path, acl_path):
    # Get the encryption key
    data = {
        "consul": {
            "encryption": {
                "key": _encryption_key(key_path),
            },
        },
    }

    # If this is a server in the ACL data center, give it the acl master token
    is_server = __salt__["match.compound"](pillar["roles"]["consul"])
    in_acl_dc = bool(pillar["dc"] == pillar["consul"]["acl"]["dc"])
    if is_server and in_acl_dc:
        data["consul"]["acl"] = {
            "__master__": _master_acl(acl_path),
        }

    return data
