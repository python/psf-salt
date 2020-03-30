# hglookup.py
#
# Lookup a revision hash in a bunch of different hgwebdir repos.
# Also includes special treatment for subversion revisions from
# the CPython repo.
#
# Written by Georg Brandl, 2010.
# Updated by Brett Cannon, 2017.

from __future__ import print_function

import io
import json
import os
from wsgiref.simple_server import make_server


class hglookup(object):
    def __init__(self, hg_commits, verbose=False):
        self.verbose = verbose
        hg_commits = set(hg_commits)
        hg_commits.update(commit[:12] for commit in list(hg_commits))
        self.hg_commits = frozenset(hg_commits)

    def successful_response(self, response, url):
        content_type = 'text/plain'
        headers = [("Content-Type", 'text/plain'),
                   ("Location", url)]
        response("303 See Other", headers)
        return []

    def failed_response(self, response):
        response("404 Not Found", [('Content-Type', 'text/plain')])
        return ['Usage: /lookup/GITHEXHASH or gitGITHEXHASH (10, 11, or 40 hex characters)\n',
                '/lookup/HGHEXNODE or hgHGHEXNODE (12 or 40 hex characters)\n',
                '/lookup/rSVNREVISION\n']

    def __call__(self, env, response):
        node = env.get('PATH_INFO', '').strip('/')
        if not node:
            return self.failed_response(response)
        elif node.startswith('hg') or node in self.hg_commits:
            if node.startswith('hg'):
                node = node[len('hg'):]
            url = 'https://hg.python.org/cpython/rev/' + node
            return self.successful_response(response, url)
        elif node.startswith('r'):
            url = 'http://svn.python.org/view?view=revision&revision=' + node[1:]
            return self.successful_response(response, url)
        elif not node.startswith('git') and len(node) not in {10, 11, 40}:
            return self.failed_response(response)
        else:
            if node.startswith('git'):
                node = node[len('git'):]
            url = 'https://github.com/python/cpython/commit/' + node
            return self.successful_response(response, url)


if __name__ == '__main__':
    HG_COMMITS = 'hg_commits.json'
    print("Loading hg commits from the JSON file ...")
    # Use `hg log --template "\"{node}\",\n` to help generate the JSON file.
    with io.open(HG_COMMITS, 'r', encoding="utf-8") as file:
        hg_commits = json.load(file)
    application = hglookup(hg_commits, verbose=True)

    httpd = make_server('', 8123, application)
    sa = httpd.socket.getsockname()
    print("Serving HTTP on", sa[0], "port", sa[1], "...")
    httpd.serve_forever()
