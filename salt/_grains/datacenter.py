_DATACENTERS = {
    "*.iad1.psf.io": "iad1",
    "*.vagrant.psf.io": "vagrant",
}


def dc():
    for pat, dc in _DATACENTERS.items():
        if __salt__["match.compound"](pat):
            return {"dc": dc}

    return {}
