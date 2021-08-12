import os
import sys
import urlparse

from MoinMoin.web.serving import make_application

sys.path.insert(0, "/etc/moin")
os.environ['PYTHONIOENCODING'] = 'utf-8'


class ScriptFixerMiddleware(object):

    def __init__(self, application):
        self.application = application

    def __call__(self, environ, start_response):
        if not environ.get("SCRIPT_NAME"):
            path = environ.get("PATH_INFO", "")
            if path.startswith("/"):
                path = path[1:]

            parsed = urlparse.urlparse(path)

            script_name = "/".join(parsed.path.split("/")[:1])
            if not script_name.startswith("/"):
                script_name = "/" + script_name

            environ["SCRIPT_NAME"] = script_name
            environ["PATH_INFO"] = "/".join(parsed.path.split("/")[1:])

        return self.application(environ, start_response)


application = ScriptFixerMiddleware(make_application(shared=False))
