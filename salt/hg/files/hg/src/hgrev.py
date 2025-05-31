# hgrev.py
#
# Dump a revision of a given hg repo as a patch
#
# Written by Ee Durbin, 2025.

import os
import shlex
import subprocess
from wsgiref.simple_server import make_server


class hgrev(object):
    def __init__(self, verbose=False):
        self.verbose = verbose

    def successful_response(self, response, contents):
        headers = [("Content-Type", "text/plain")]
        response("200 OK", headers)
        return [contents]

    def failed_response(self, response, detail=""):
        headers = [("Content-Type", "text/plain")]
        response("404 Not Found", headers)
        return [
            detail.encode(),
            "\nUsage: path/to/hg/repo/rev/HGHEXNODE (12 or 40 hex characters)\n".encode(),
        ]

    def __call__(self, env, response):
        node = env.get("SCRIPT_NAME", "").strip("/")
        repository = os.path.dirname(node).rstrip("/rev")
        rev = os.path.basename(node)

        hg_repo = os.path.join("/srv/hg/repos", repository, ".hg")
        if not os.path.exists(hg_repo):
            return self.failed_response(
                response,
                detail=f"repo not found ({repository}) ({rev})",
            )

        command = ["hg", "log", "-v", "-p", "-r", shlex.quote(rev)]

        try:
            result = subprocess.run(
                command,
                cwd=hg_repo,
                capture_output=True,
                text=False,
                shell=False,
                check=True
            )
        except Exception as e:
            return self.failed_response(response, detail=str(e))

        return self.successful_response(response, result.stdout)


if __name__ == "__main__":
    application = hgrev(verbose=True)

    httpd = make_server("", 8124, application)
    sa = httpd.socket.getsockname()
    print("Serving HTTP on", sa[0], "port", sa[1], "...")
    httpd.serve_forever()
