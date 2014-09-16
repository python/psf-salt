from __future__ import absolute_import, division, print_function

import contextlib
import os

import fabric.api


@contextlib.contextmanager
def cd(path):
    current_path = os.path.abspath(os.curdir)
    os.chdir(path)
    try:
        yield
    finally:
        os.chdir(current_path)


@contextlib.contextmanager
def ssh_host(host):
    current_value = fabric.api.env.host_string
    fabric.api.env.host_string = host
    try:
        yield
    finally:
        fabric.api.env.host_string = current_value
