import socket


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
