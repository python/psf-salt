import salt.minion

from salt._compat import string_types


def compound(tgt, minion_id=None):
    opts = {'grains': __grains__}
    if minion_id is not None:
        if not isinstance(minion_id, string_types):
            minion_id = str(minion_id)
        else:
            minion_id = __grains__['id']
    opts['id'] = minion_id
    matcher = salt.minion.Matcher(opts, __salt__)
    try:
        return matcher.compound_match(tgt)
    except Exception:
        pass
    return False


def ext_pillar(minion_id, pillar, **mapping):
    for pat, datacenter in mapping.items():
        if compound(pat, minion_id):
            return {"dc": datacenter}

    return {}
