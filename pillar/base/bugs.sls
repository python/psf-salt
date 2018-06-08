bugs:
  trackers:
    python-dev:
      source: https://hg.python.org/tracker/python-dev
      config:
          main__admin_email: roundup-admin
          main__dispatcher_email: roundup-admin
          main__html_version: xhtml
          tracker__name: "Python tracker"
          tracker__web: "https://bugs.python.org/"
          tracker__email: "report@bugs.python.org"
          mail__domain: psf.upfronthosting.co.za
          mailgw__ignore_alternatives: "yes"
          nosy__messages_to_author: "yes"
          nosy__add_author: "yes"
          nosy__email_sending: "multiple"
    meta:
      source: https://hg.python.org/tracker/meta
      config:
          main__admin_email: roundup-admin
          main__dispatcher_email: roundup-admin
          main__html_version: html4
          tracker__name: "PSF Meta Tracker"
          tracker__web: "http://psf.upfronthosting.co.za/roundup/meta/"
          tracker__email: "metatracker"
          mail__domain: psf.upfronthosting.co.za
          mailgw__ignore_alternatives: "yes"
          nosy__messages_to_author: "yes"
          nosy__add_author: "yes"
          nosy__email_sending: "multiple"
    jython:
      source: https://hg.python.org/tracker/jython
      config:
          main__admin_email: roundup-jython-admin
          main__dispatcher_email: roundup-admin
          main__html_version: xhtml
          tracker__name: "Jython tracker"
          tracker__web: "http://bugs.jython.org/"
          tracker__email: "report@bugs.jython.org"
          mail__domain: psf.upfronthosting.co.za
          nosy__messages_to_author: "yes"
          nosy__add_author: "yes"
          nosy__email_sending: "multiple"
    setuptools:
      source: https://hg.python.org/tracker/setuptools
      config:
          main__admin_email: roundup-admin
          main__dispatcher_email: roundup-admin
          main__html_version: html4
          tracker__name: "Setuptools tracker"
          tracker__web: "https://bugs.python.org/setuptools/"
          tracker__email: "setuptools@bugs.python.org"
          web__use_browser_language: "yes"
          mail__domain: psf.upfronthosting.co.za
          nosy__messages_to_author: "yes"
          nosy__add_author: "yes"
          nosy__email_sending: "single"
    roundup:
      source: https://hg.python.org/tracker/roundup
      config:
          main__admin_email: roundup-admin@psf.upfronthosting.co.za
          main__dispatcher_email: admin@issues.roundup-tracker.org
          main__html_version: xhtml
          tracker__name: "Roundup tracker"
          tracker__web: "http://issues.roundup-tracker.org/"
          tracker__email: "issues@roundup-tracker.org"
          mail__domain: psf.upfronthosting.co.za
          mail__add_authoremail: "no"
          mailgw__subject_prefix_parsing: "loose"
          mailgw__subject_suffix_parsing: "loose"
          nosy__messages_to_author: "yes"
          nosy__add_author: "yes"
          nosy__email_sending: "multiple"
  defaults:
      main__database: "db"
      main__template_engine: "zopetal"
      main__templates: "html"
      main__static_files: ""
      main__admin_email: "roundup-admin"
      main__dispatcher_email: "roundup-admin"
      main__email_from_tag: ""
      main__new_web_user_roles: "User"
      main__new_email_user_roles: "User"
      main__error_messages_to: "user"
      main__html_version: "html4"
      main__timezone: "UTC"
      main__instant_registration: "no"
      main__email_registration_confirmation: "yes"
      main__indexer: ""
      main__indexer_stopwords: ""
      main__umask: "02"
      main__csv_field_size: "131072"
      main__password_pbkdf2_default_rounds: "10000"
      tracker__name: "Roundup issue tracker"
      tracker__email: "issue_tracker"
      tracker__replyto_address: ""
      tracker__language: ""
      web__allow_html_file: "no"
      web__http_auth: "yes"
      web__samesite_cookie_setting: "Lax"
      web__csrf_enforce_token: "yes"
      web__csrf_token_lifetime: "20160"
      web__csrf_enforce_header_x_requested_with: "yes"
      web__csrf_enforce_header_referer: "yes"
      web__csrf_enforce_header_origin: "yes"
      web__csrf_enforce_header_x_forwarded_host: "yes"
      web__csrf_enforce_header_host: "yes"
      web__csrf_header_min_count: "1"
      web__use_browser_language: "yes"
      web__debug: "no"
      web__migrate_passwords: "yes"
      rdbms__name: "roundup"
      rdbms__backend: "postgresql"
      rdbms__host: "localhost"
      rdbms__port: ""
      rdbms__user: "roundup"
      rdbms__password: "roundup"
      rdbms__read_default_file: "~/.my.cnf"
      rdbms__read_default_group: "roundup"
      rdbms__sqlite_timeout: "30"
      rdbms__cache_size: "100"
      rdbms__allow_create: "yes"
      rdbms__allow_alter: "yes"
      rdbms__allow_drop: "yes"
      rdbms__template: ""
      rdbms__isolation_level: "read committed"
      logging__config: ""
      logging__filename: ""
      logging__level: "ERROR"
      mail__username: ""
      mail__port: "25"
      mail__local_hostname: ""
      mail__tls: "no"
      mail__tls_keyfile: ""
      mail__tls_certfile: ""
      mail__charset: "utf-8"
      mail__debug: ""
      mail__add_authorinfo: "yes"
      mail__add_authoremail: "yes"
      mailgw__keep_quoted_text: "yes"
      mailgw__leave_body_unchanged: "no"
      mailgw__default_class: "issue"
      mailgw__language: ""
      mailgw__subject_prefix_parsing: "strict"
      mailgw__subject_suffix_parsing: "strict"
      mailgw__subject_suffix_delimiters: "[]"
      mailgw__subject_content_match: "always"
      mailgw__subject_updates_title: "yes"
      mailgw__refwd_re: "(\\s*\\W?\\s*(fw|fwd|re|aw|sv|ang)\\W)+"
      mailgw__origmsg_re: "^[>|\\s]*-----\\s?Original Message\\s?-----$"
      mailgw__sign_re: "^[>|\\s]*-- ?$"
      mailgw__eol_re: "[\\r\\n]+"
      mailgw__blankline_re: "[\\r\\n]+\\s*[\\r\\n]+"
      mailgw__unpack_rfc822: "no"
      mailgw__ignore_alternatives: "no"
      mailgw__keep_real_from: "no"
      pgp__enable: "no"
      pgp__roles: ""
      pgp__homedir: ""
      pgp__encrypt: "no"
      pgp__require_incoming: "signed"
      nosy__messages_to_author: "no"
      nosy__signature_position: "bottom"
      nosy__add_author: "new"
      nosy__add_recipients: "new"
      nosy__email_sending: "single"
      nosy__max_attachment_size: "9223372036854775807"
