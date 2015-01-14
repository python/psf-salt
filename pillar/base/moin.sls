moin:
  wikis:
    python:
      name: Python Wiki
      regex: '.*python\.org/moin(/.*|$)'
      logo: '</a><a href="http://www.python.org"><img src="/wiki/europython/img/python-logo.gif" alt="Python" ></a><a name="logo">'
      theme: europython
    psf:
      name: Private PSF Wiki
      regex: '.*python\.org/psf/.*'
      logo: Private PSF Wiki
      acls:
        before: "AdminGroup:read,write,delete,revert,admin"
        default: ""
        after: "MembersGroup:read,write,delete,revert All:"
      linkspam: False
    jython:
      name: Jython Wiki
      regex: '.*python\.org/jython.*'
      logo: '<img src="/wiki/europython/img/jython-new-small.gif" alt="JythonWiki">&nbsp;'
      interwiki: JythonWiki
