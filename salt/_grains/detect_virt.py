#!/usr/bin/env python

import subprocess


def main():
    try:
        result = subprocess.run(
            ["/usr/bin/systemd-detect-virt"], stdout=subprocess.PIPE, check=True
        ).stdout.rstrip()
    except FileNotFoundError:
        result = "unknown"
    return {"detect_virt": result}
