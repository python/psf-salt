import salt


def __virtual__():
    '''
    Only work on POSIX-like systems
    '''
    # Disable on Windows, a specific file module exists:
    if salt.utils.is_windows():
        return False

    return True


class BlockDevice(object):

    def __init__(self, name, type_, fstype=None, mount_point=None):
        self.name = name
        self.type = type_
        self.fstype = fstype
        self.mount_point = mount_point


def data_disks():
    """
    Returns a list of data disks attached to this instance.
    """
    data_disks = {}

    disks = []
    parts = []

    results = __salt__["cmd.run"]("lsblk -l -n -o NAME,TYPE,FSTYPE,MOUNTPOINT")

    # Get a list for all the disks and partitions
    for line in results.splitlines():
        dev = BlockDevice(*line.split())
        if dev.type.lower() == "disk":
            disks.append(dev)
        elif dev.type.lower() == "part":
            parts.append(dev)

    # Find all disks that are not mounted on the root FS
    for disk in disks:
        for part in parts:
            if part.name.startswith(disk.name) and part.mount_point != "/":
                part_data = data_disks.setdefault(disk.name, {}) \
                    .setdefault("partitions", {})
                part_data[part.name] = {
                    "fstype": part.fstype,
                    "mount_point": part.mount_point,
                }

    return data_disks


def data_partitions():
    """
    Returns a list of data disks attached to this instance.
    """

    # Locate all the devices and their partitions on this machine.
    results = __salt__["cmd.run"]("lsblk -l -n -o NAME,TYPE,FSTYPE,MOUNTPOINT")
    devices = {}
    for blk in [x.split() for x in results.splitlines()]:
        if blk[1] == "disk":
            devices.setdefault(blk[0], {})
        elif blk[1] == "part":
            blk_data = devices.setdefault(blk[0][:4], {})
            blk_data[blk[0]] = blk[2:]

    # Figure out which devices are data disks, they'll be the ones that do not
    # have a partition with a Filesystem.
    data_disks = []
    for dev, parts in devices.items():
        for part, data in parts.items():
            if data and data[1] == "/":
                continue

            partition_data = {"device": dev, "partition": part}

            if data:
                partition_data.update({"fs": data[0], "mount": data[1]})

            data_disks.append(partition_data)

    return data_disks
