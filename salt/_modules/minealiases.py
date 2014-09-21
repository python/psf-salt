def psf_internal(cidr):
    return __salt__["ip_picker.ip_addrs"](cidr=cidr)


def pypi_internal(cidr):
    return __salt__["ip_picker.ip_addrs"](cidr=cidr)
