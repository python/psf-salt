moin:
  wikis:
    python:
      name: Python Wiki
      regex: '^https?://[^/]+(:\d+)?/moin.*$'
      logo: '</a><a href="http://www.python.org"><img src="/static/europython/img/python-logo.gif" alt="Python" ></a><a name="logo">'
      theme: europython
    psf:
      name: Private PSF Wiki
      regex: '^https?://[^/]+(:\d+)?/psf.*$'
      logo: Private PSF Wiki
      acls:
        before: "AdminGroup:read,write,delete,revert,admin"
        default: ""
        after: "MembersGroup:read,write,delete,revert All:"
      linkspam: False
    jython:
      name: Jython Wiki
      regex: '^https?://[^/]+(:\d+)?/jython.*$'
      logo: '<img src="/static/europython/img/jython-new-small.gif" alt="JythonWiki">&nbsp;'
      interwiki: JythonWiki
