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
