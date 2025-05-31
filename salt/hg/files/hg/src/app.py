import io
import os
import subprocess
import shlex
import json

from flask import current_app, Flask, make_response, redirect

app = Flask(__name__)

HG_COMMITS = os.path.join(os.path.dirname(__file__), "hg_commits.json")
app.hg_commits = set()
with io.open(HG_COMMITS, "r", encoding="utf-8") as file:
    hg_commits = json.load(file)
    hg_commits = set(hg_commits)
    hg_commits.update(commit[:12] for commit in list(hg_commits))
    app.hg_commits = frozenset(hg_commits)


@app.route("/lookup/<rev>")
def lookup(rev):
    url = None
    if rev.startswith("hg") or rev in current_app.hg_commits:
        if rev.startswith("hg"):
            rev = rev[len("hg") :]
        url = "https://hg.python.org/cpython/rev/" + rev
    elif rev.startswith("r"):
        url = "http://svn.python.org/view?view=revision&revision=" + rev[1:]
    else:
        if rev.startswith("git"):
            rev = rev[len("git") :]
        url = "https://github.com/python/cpython/commit/" + rev
    if url is None:
        return make_response(
            (
                "Usage: /lookup/GITHEXHASH or gitGITHEXHASH "
                "(10, 11, or 40 hex characters)\n",
                "/lookup/HGHEXNODE or hgHGHEXNODE (12 or 40 hex characters)\n",
                "/lookup/rSVNREVISION\n",
            ),
            404,
        )
    else:
        return redirect(url, code=303)


@app.route("/<path:repo>/rev/<rev>")
def hgrev(repo, rev):
    hg_repo = os.path.join("/srv/hg/repos", repo, ".hg")
    if not os.path.exists(hg_repo):
        return make_response(f"repo not found ({repo}) ({rev})", 404)
    command = ["hg", "log", "-v", "-p", "-r", shlex.quote(rev)]
    try:
        result = subprocess.run(
            command,
            cwd=hg_repo,
            capture_output=True,
            text=False,
            shell=False,
            check=True,
        )
    except Exception as e:
        return make_response(
            (
                f"{str(e)}\n"
                "Usage: path/to/hg/repo/rev/HGHEXNODE "
                "(12 or 40 hex characters)\n"
            ),
            404,
        )

    return make_response(result.stdout, 200)
