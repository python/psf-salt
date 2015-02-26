def external_service(name, datacenter, node, address, port, token=None):
    ret = {'name': name, 'changes': {}, 'result': False, 'comment': ''}

    if token is None:
        token = __pillar__['consul']['acl']['tokens']['default']

    # Determine if the cluster is ready
    if not __salt__["consul.cluster_ready"]():
        ret["result"] = True
        ret["comment"] = "Consul cluster is not ready."
        return ret

    # Determine if the node we're attempting to register exists
    if __salt__["consul.node_exists"](node, address, dc=datacenter):
        # Determine if the service we're attempting to register exists
        if __salt__["consul.node_service_exists"](
                node, name, port, dc=datacenter):
            ret["result"] = True
            ret["comment"] = (
                "External Service {} already in the desired state.".format(
                    name,
                )
            )
            return ret

    if __opts__['test'] == True:
        ret['comment'] = 'The state of "{0}" will be changed.'.format(name)
        ret['changes'] = {
            'old': None,
            'new': 'External Service {}'.format(name),
        }
        ret["result"] = None
        return ret

    __salt__["consul.register_external_service"](
        node, address, datacenter, name, port, token,
    )

    ret["result"] = True
    ret["comment"] = "Registered external service: '{}'.".format(name)
    ret["changes"] = {
        "old": None,
        "new": 'External Service {}'.format(name),
    }

    return ret
