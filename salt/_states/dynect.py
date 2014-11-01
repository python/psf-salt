import dyn.tm.errors

from dyn.tm.session import DynectSession
from dyn.tm.zones import Zone


def managed(name, domain, ipv4=[], ipv6=[]):
    ret = {'name': name, 'changes': {}, 'result': False, 'comment': ''}

    if not name.endswith(domain):
        ret["comment"] = "Name is not a subdomain of domain"
        ret["result"] = False
        return ret

    node_name = name[:-len(domain) - 1]

    creds = __salt__["pillar.get"]("dynect:creds", None)

    if creds is None:
        ret["comment"] = "No Dynect Credentials Found"
        ret["result"] = True
        return ret

    # Filter down the ipv4 lists to only public addresses, we're assuming that
    # IPv6 addresses are always public.
    ipv4 = [i for i in ipv4 if not __salt__["network.is_private"](i)]

    # This is not a bug, there is global state at play here.
    DynectSession(creds["customer"], creds["user"], creds["password"])

    zone = Zone(domain)
    node = zone.get_node(node_name)

    to_delete = []
    to_add = []

    try:
        # Look at all of the IPv4 Addresses
        for record in node.get_all_records_by_type("A"):
            if record.address in ipv4:
                ipv4.remove(record.address)
            else:
                to_delete.append(record)

        # Look at all of the IPv6 Addresses
        for record in node.get_all_records_by_type("AAAA"):
            if record.address in ipv6:
                ipv6.remove(record.address)
            else:
                to_delete.append(record)
    except dyn.tm.errors.DynectGetError:
        pass

    # Add any new IPv4 Addresses
    for address in ipv4:
        to_add.append((node_name, "A", address))

    # Add any new IPv6 Addresses
    for address in ipv6:
        to_add.append((node_name, "AAAA", address))

    if not to_delete and not to_add:
        ret['result'] = True
        ret["comment"] = "DNS for {} already correct.".format(name)
        return ret

    if __opts__['test'] == True:
        ret['comment'] = 'DNS for "{0}" will be changed.'.format(name)
        ret["changes"] = {
            "old": [str(s) for s in to_delete],
            "new": [str(s) for s in to_add],
        }
        ret["result"] = None
        return ret

    # Delete stuff
    for item in to_delete:
        item.delete()

    # Add stuff
    for item in to_add:
        zone.add_record(*item)

    # Publish!
    zone.publish()

    ret['comment'] = 'DNS for "{0}" was changed.'.format(name)
    ret["changes"] = {
        "old": [str(s) for s in to_delete],
        "new": [str(s) for s in to_add],
    }
    ret["result"] = True

    return ret
