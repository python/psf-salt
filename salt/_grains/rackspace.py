import os
import os.path
import sys
import subprocess


def _which(cmd, mode=os.F_OK | os.X_OK, path=None):
    """
    Given a command, mode, and a PATH string, return the path which
    conforms to the given mode on the PATH, or None if there is no such
    file.

    `mode` defaults to os.F_OK | os.X_OK. `path` defaults to the result
    of os.environ.get("PATH"), or can be overridden with a custom search
    path.

    Taken from CPython 3.5 development branch.

    """
    # Check that a given file can be accessed with the correct mode.
    # Additionally check that `file` is not a directory, as on Windows
    # directories pass the os.access check.
    def _access_check(fn, mode):
        return (os.path.exists(fn) and os.access(fn, mode)
                and not os.path.isdir(fn))

    # If we're given a path with a directory part, look it up directly rather
    # than referring to PATH directories. This includes checking relative to
    # the current directory, e.g. ./script
    if os.path.dirname(cmd):
        if _access_check(cmd, mode):
            return cmd
        return None

    if path is None:
        path = os.environ.get("PATH", os.defpath)
    if not path:
        return None
    path = path.split(os.pathsep)

    if sys.platform == "win32":
        # The current directory takes precedence on Windows.
        if os.curdir not in path:
            path.insert(0, os.curdir)

        # PATHEXT is necessary to check on Windows.
        pathext = os.environ.get("PATHEXT", "").split(os.pathsep)
        # See if the given file matches any of the expected path extensions.
        # This will allow us to short circuit when given "python.exe".
        # If it does match, only test that one, otherwise we have to try
        # others.
        if any(cmd.lower().endswith(ext.lower()) for ext in pathext):
            files = [cmd]
        else:
            files = [cmd + ext for ext in pathext]
    else:
        # On other platforms you don't have things like PATHEXT to tell you
        # what file suffixes are executable, so just pass on cmd as-is.
        files = [cmd]

    seen = set()
    for dir in path:
        normdir = os.path.normcase(dir)
        if normdir not in seen:
            seen.add(normdir)
            for thefile in files:
                name = os.path.join(dir, thefile)
                if _access_check(name, mode):
                    return name
    return None


def dc():
    # Determine if we have the xenstore-read command, if we do then we might be
    # on Rackspace, if we don't then we probably aren't.
    xenstore_read = _which("xenstore-read")
    if not xenstore_read:
        return {}

    # Ensure that we have /proc/xen mounted, we cannot read anything with
    # xenstore-read if this is not mounted. If it does not successfully mount
    # then we'll just give up
    with open("/etc/mtab") as fp:
        mtab = fp.read()
    if "/proc/xen" not in mtab:
        try:
            subprocess.check_output([
                "mount", "-t", "xenfs", "none", "/proc/xen",
            ])
        except Exception:
            return {}

    # Actually attempt to read provider data from /proc/xen and determine if
    # we are running on Rackspace.
    try:
        provider = subprocess.check_output([
            "xenstore-read", "vm-data/provider_data/provider",
        ])
    except Exception:
        return {}
    if provider.strip().lower() != "rackspace":
        return {}

    # Yay, we're on Rackspace. So let's figure out what region!
    try:
        region = subprocess.check_output([
            "xenstore-read", "vm-data/provider_data/region",
        ]).strip()
    except Exception:
        return {}

    # Finally, we can add a grain that says what DC we are in!
    return {"dc": "rax-{}".format(region)}
