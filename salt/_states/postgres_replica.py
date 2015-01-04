def slot(name):
    ret = {'name': name, 'changes': {}, 'result': False, 'comment': ''}

    sql = "SELECT * FROM pg_replication_slots WHERE slot_name = '%s'" % name
    if __salt__["postgres.psql_query"](sql):
            ret["result"] = True
            ret["comment"] = "Replication slot '{}' already exists.".format(
                name,
            )
            return ret

    if __opts__['test']:
        ret['comment'] = 'Replication slot "{0}" will be created.'.format(name)
        ret['changes'] = {
            'old': None,
            'new': name,
        }
        ret["result"] = None
        return ret

    __salt__["postgres.psql_query"](
        """ SELECT * FROM
            pg_create_physical_replication_slot('%s');
        """ % name
    )

    ret["result"] = True
    ret["comment"] = "Created replication slot: '{}'.".format(name)
    ret["changes"] = {
        "old": None,
        "new": name,
    }

    return ret
