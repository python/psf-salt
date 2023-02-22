# -*- coding: utf-8 -*-
# IMPORTANT! This encoding (charset) setting MUST be correct! If you live in a
# western country and you don't know that you use utf-8, you probably want to
# use iso-8859-1 (or some other iso charset). If you use utf-8 (a Unicode
# encoding) you MUST use: coding: utf-8
# That setting must match the encoding your editor uses when you modify the
# settings below. If it does not, special non-ASCII chars will be wrong.

"""
    MoinMoin - Configuration for a wiki farm

    If you run a single wiki only, you can omit this file file and just
    use wikiconfig.py - it will be used for every request we get in that
    case.

    Note that there are more config options than you'll find in
    the version of this file that is installed by default; see
    the module MoinMoin.multiconfig for a full list of names and their
    default values.

    Also, the URL http://moinmoin.wikiwikiweb.de/HelpOnConfiguration has
    a list of config options.

    @copyright: 2000-2004 by Juergen Hermann <jh@web.de>
    @license: GNU GPL, see COPYING for details.
"""


# Wikis in your farm --------------------------------------------------

# If you run multiple wikis, you need this list of pairs (wikiname, url
# regular expression). moin processes that list and tries to match the
# regular expression against the URL of this request - until it matches.
# Then it loads the <wikiname>.py config for handling that request.

wikis = [
    # wikiname,     url regular expression (no protocol, no port!)
    ("python", r".*(python\.org)/moin(/.*|$)"),
    ("psf", r".*(python\.org)/psf/.*"),
    ("jython", r".*(python\.org)/jython.*"),
]


# Common configuration for all wikis ----------------------------------

# Everything that should be configured the same way should go here,
# anything else that should be different should go to the single wiki's
# config.
# In that single wiki's config, we will use the class FarmConfig we define
# below as the base config settings and only override what's different.
#
# In exactly the same way, we first include MoinMoin's Config Defaults here -
# this is to get everything to sane defaults, so we need to change only what
# we like to have different:

from MoinMoin.config import multiconfig, url_prefix_static

# Now we subclass this DefaultConfig. This means that we inherit every setting
# from the DefaultConfig, except those we explicitely define different.

class FarmConfig(multiconfig.DefaultConfig):
    url_prefix = '/wiki'
    include_doctype = True
    traceback_show = False
    url_prefix_static = '/wiki'

    # until we are finished with the setup we don't want anonymous access
    #acl_rights_default = u"MarcAndreLemburg,ReimarBauer:read,write,delete,revert All:"
    # to disallow edits by users that are not logged in:
    acl_rights_default = u"Known:read,write,delete,revert All:read"

    page_front_page = u"FrontPage"

    # Warning to display to users after 2013 wiki attack:
    #page_header1 = """<p class="red"><b>Please note:</b> This wiki is
    #currently running in test mode after an attack on January 5 2013. 
    #<b>All passwords were reset</b>, so you will have to use the <a
    #href="?action=recoverpass">password recovery function</a> to get a new
    #password.  <b>To edit wiki pages, please log in first.</b> See the <a
    #href="/moin/WikiAttack2013">wiki attack description page</a> for more
    #details.  If you find problems, please report them to the <a
    #href="mailto:pydotorg-www@python.org">pydotorg-www mailing list</a>. 
    #</p> """
    
    # as it isnt modified, it can be share between all instances:
    data_underlay_dir = '/data/moin/instances/underlay/'

    shared_intermap = '/etc/moin/shared_intermap.txt'

    xapian_index_dir = '/data/moin/instances/xapian'
    xapian_search = True

    # options people are likely to change due to personal taste
    show_hosts = 1                          # show hostnames?
    nonexist_qm = 0                         # show '?' for nonexistent?
    backtick_meta = 1                       # allow `inline typewriter`?
    allow_extended_names = 1                # allow ["..."] markup?
    edit_rows = 20                          # editor size
    edit_cols = 50
    max_macro_size = 50                     # max size of RecentChanges in KB (0=unlimited)
    bang_meta = 1                           # use ! to escape WikiNames?
    show_section_numbers = 0                # enumerate headlines?
    user_checkbox_defaults = {'edit_on_doubleclick': 0}

    editor_default = 'text'
    editor_force = True
    editor_ui = 'text'

    # Charting needs "gdchart" installed! (None to disable charting)
    chart_options = {'width': 600, 'height': 300}

    # Allow new user creation
    actions_superuser = multiconfig.DefaultConfig.actions_superuser[:]
    actions_superuser.remove('newaccount')

    # Disable certain actions that aren't very useful for us.
    actions_excluded = multiconfig.DefaultConfig.actions_excluded[:]
    # on default this is "xmlrpc", "CopyPages", "MyPages"

    # this disables the user to create a zip file from a page 
    # and download this file
    actions_excluded.append('PackagePages')
    # this disables the user to sync pages to an other wiki, this works onl
    # if xmlrpc is enabled
    actions_excluded.append('SyncPages')
    # the content should not be rendered as docbook
    actions_excluded.append('RenderAsDocbook')
    # noone on this wikis wants to mass (un)subscribe users to a page
    actions_excluded.append('SubscribeUser')
    # makes it impossible for users to save a raw copy of the markup easy to a file
    actions_excluded.append('Save')

    actions_excluded.append('Load')
    actions_excluded.append('twikidraw')
    actions_excluded.append('anywikidraw')
    #check where that in 1.9 is used
    #actions_excluded.append('cache')
    actions_excluded.append('chart')
    # can be removed after language packs are installed
    #actions_excluded('LanguageSetup')
    actions_excluded.append('pollsistersites')
    # language setup only needs to be done after update/reinstall
    actions_excluded.append('language_setup')
    # don't need a server
    actions_excluded.append('serveopenid')
    actions_excluded.append('showtags')
    actions_excluded.append('sisterpages')
    actions_excluded.append('thread_monitor')

    # mail functions. use empty mail_smarthost to disable.
    mail_smarthost = 'mail.python.org'
    mail_from = 'Python Wiki <wiki@python.org>'

    language_default = 'en'
    language_ignore_browser = True

    page_category_regex = ur'(?P<all>Category(?P<key>\S+))'
    page_dict_regex = ur'(?P<all>(?P<key>\S+)Dict)'
    page_group_regex = ur'(?P<all>(?P<key>\S+)Group)'
    page_template_regex = ur'(?P<all>(?P<key>\S+)Template)'

    #caching_formats = []

    # Surge protection; see https://moinmo.in/HelpOnConfiguration/SurgeProtection
    surge_action_limits = { # allow max. <count> <action> requests per <dt> secs
        # action: (count, dt)
        'show': (100, 60),
        'raw': (20, 40),  # some people use this for css
        'AttachFile': (60, 60),
        'diff': (30, 60),
        'fullsearch': (10, 60),
        'edit': (10, 120),
        'rss_rc': (1, 60),
        'default': (60, 60),
    }
    surge_lockout_time = 120 # secs you get locked out when you ignore warnings

    # Link spam protection for public wikis (uncomment to enable).
    # Needs a reliable internet connection.
    from MoinMoin.security.antispam import SecurityPolicy


