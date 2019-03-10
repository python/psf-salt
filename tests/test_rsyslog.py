import pytest
import os

@pytest.mark.parametrize("pkgname", ["rsyslog", "git"])
def test_rsyslog_installed(host, pkgname):
    pkg = host.package(pkgname)
    assert pkg.is_installed
