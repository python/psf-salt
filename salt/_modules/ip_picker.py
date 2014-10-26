import salt
from salt.utils.network import in_subnet
import socket
import struct


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


def subnet_mask_for_cidr(cidr="0.0.0.0/0"):
    """
    Returns the ip address and subnet mask for a given CIDR.
    """
    ip, cidr_mask = cidr.split("/")
    subnet_mask = socket.inet_ntoa(
        struct.pack(">I", (0xffffffff << (32 - int(cidr_mask))) & 0xffffffff)
    )

    return {"address": ip, "subnet": subnet_mask}


def ip_family(address_or_cidr):
    address = address_or_cidr.split("/", 1)[0]
    addrinfo = socket.getaddrinfo(address, 0)

    if addrinfo[0][0] == socket.AF_INET6:
        return "ipv6"
    elif addrinfo[0][0] == socket.AF_INET:
        return "ipv4"
    else:
        raise ValueError("Invalid ip family.")


def public_addresses():
    import ipaddr

    ip4_addrs = []
    for addr in __grains__["fqdn_ip4"]:
        paddr = ipaddr.IPAddress(addr)
        if paddr.is_private:
            continue
        ip4_addrs.append(addr)
    ip4_addrs = set(ip4_addrs)

    ip6_addrs = []
    for addr in __grains__["fqdn_ip6"]:
        paddr = ipaddr.IPv6Address(addr)
        if paddr.is_private:
            continue
        ip6_addrs.append(addr)
    ip6_addrs = set(ip6_addrs)

    return {"ipv4": sorted(ip4_addrs), "ipv6": sorted(ip6_addrs)}
