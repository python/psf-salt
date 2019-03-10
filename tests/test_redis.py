import pytest
import os

def test_redis_conf_exists(host):
    redis = host.service("redis-server")
    host.file("/etc/redis/redis.conf").exists
