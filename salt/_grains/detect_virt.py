#!/usr/bin/env python

import subprocess


def main():
    try:
        proc = subprocess.run(
            ["/usr/bin/systemd-detect-virt"], stdout=subprocess.PIPE, stderr=subprocess.PIPE
        )
        result = proc.stdout.decode().strip()
        if not result:
            result = "none"
    except FileNotFoundError:
        result = "unknown"
    return {"detect_virt": result}
