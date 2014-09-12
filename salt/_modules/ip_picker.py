import salt
from salt.utils.network import in_subnet
import socket

def __virtual__():
    '''
    Only work on POSIX-like systems
    '''
    # Disable on Windows, a specific file module exists:
    if salt.utils.is_windows():
        return False

    return True

def ip_addrs(interface=None, include_loopback=False, cidr=None):
    '''
    Returns a list of IPv4 addresses assigned to the host. 127.0.0.1 is
    ignored, unless 'include_loopback=True' is indicated. If 'interface' is
    provided, then only IP addresses from that interface will be returned.
    Providing a CIDR via 'cidr="10.0.0.0/8"' will return only the addresses
    which are within that subnet.

    CLI Example:

    .. code-block:: bash

        salt '*' network.ip_addrs
    '''
    addrs = salt.utils.network.ip_addrs(interface=interface,
                                        include_loopback=include_loopback)
    if cidr:
        return sorted([i for i in addrs if in_subnet(cidr, [i])],
                      key=lambda item: socket.inet_aton(item))
    else:
        return addrs

def interfaces_for_cidr(cidr='0.0.0.0/0'):
    '''
    Return a dictionary of information about all the interfaces on the minion
    which have an address in the givin CIDR.

    CLI Example:

    .. code-block:: bash

        salt '*' network.interfaces_for_cidr cidr="192.168.1.1/24"
    '''
    interfaces = salt.utils.network.interfaces()
    matched = []
    for interface, data in interfaces.iteritems():
        for net in data.get('inet'):
            if salt.utils.network.in_subnet(cidr, [net['address']]):
                matched.append(interface)
    return list(set(matched))
