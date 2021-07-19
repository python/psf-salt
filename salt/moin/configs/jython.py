# -*- coding: iso-8859-1 -*-
# IMPORTANT! This encoding (charset) setting MUST be correct! If you live in a
# western country and you don't know that you use utf-8, you probably want to
# use iso-8859-1 (or some other iso charset). If you use utf-8 (a Unicode
# encoding) you MUST use: coding: utf-8
# That setting must match the encoding your editor uses when you modify the
# settings below. If it does not, special non-ASCII chars will be wrong.

"""
    MoinMoin - Configuration for a single wiki

    If you run a single wiki only, you can omit the farmconfig.py config
    file and just use wikiconfig.py - it will be used for every request
    we get in that case.

    Note that there are more config options than you'll find in
    the version of this file that is installed by default; see
    the module MoinMoin.multiconfig for a full list of names and their
    default values.

    Also, the URL http://moinmoin.wikiwikiweb.de/HelpOnConfiguration has
    a list of config options.

    @copyright: 2000-2005 by Juergen Hermann <jh@web.de>
    @license: GNU GPL, see COPYING for details.
"""

from farmconfig import FarmConfig

class Config(FarmConfig):

    # Wiki identity ----------------------------------------------------

    # Site name, used by default for wiki name-logo [Unicode]
    sitename = u'JythonWiki'

    # Wiki logo. You can use an image, text or both. [Unicode]
    # Example: u'<img src="/wiki/mywiki.png" alt="My Wiki">My Wiki'
    # For no logo or text, use ''
    logo_string = u'<img src="/wiki/europython/img/jython-new-small.gif" alt="JythonWiki">&nbsp;'

    # The interwiki name used in interwiki links
    interwikiname = 'JythonWiki'


    # Critical setup  ---------------------------------------------------

    # Misconfiguration here will render your wiki unusable. Check that
    # all directories are accessible by the web server or moin server.

    # If you encounter problems, try to set data_dir and data_underlay_dir
    # to absolute paths.

    # Where your mutable wiki pages are. You want to make regular
    # backups of this directory.
    data_dir = '/data/moin/instances/jython/data/'

    # Where read-only system and help page are. You might want to share
    # this directory between several wikis. When you update MoinMoin,
    # you can safely replace the underlay directory with a new one. This
    # directory is part of MoinMoin distribution, you don't have to
    # backup it.
    ## data_underlay_dir = '/data/moin/instances/underlay/'

    # This must be '/wiki' for twisted and standalone. For CGI, it should
    # match your Apache Alias setting.
    ## url_prefix = 'http://wiki.python.org/wiki'
    

    # Security ----------------------------------------------------------

    # Security critical actions (disabled by default)
    # Uncomment to enable options you like.
    # IMPORTANT: grant yourself admin rights! replace YourName with
    # your user name. See HelpOnAccessControlLists for more help.
    acl_rights_before = u"BlockedUsersGroup: AdminGroup:read,write,delete,revert,admin"

    # Only users in the NewUsersGroup may edit pages, since we're simply
    # getting too much spam and vandalism. MAL 2014-05-31
    acl_rights_default = u"EditorsGroup:read,write,delete,revert All:read"
    
    # Link spam protection for public wikis (Uncomment to enable)
    # Needs a reliable internet connection.
    from MoinMoin.security.antispam import SecurityPolicy


    # User interface ----------------------------------------------------
    
    # Add your wikis important pages at the end. It is not recommended to
    # remove the default links.  Leave room for user links - don't use
    # more than 6 short items.
    # You MUST use Unicode strings here, but you need not use localized
    # page names for system and help pages, those will be used automatically
    # according to the user selected language. [Unicode]
    navi_bar = [
        # Will use page_front_page, (default FrontPage)
        u'%(page_front_page)s',
        u'RecentChanges',
        u'FindPage',
        u'HelpContents',
    ]

    # The default theme anonymous or new users get
    ##theme_default = 'jythonwiki'
    

    # Language options --------------------------------------------------

    # See http://moinmoin.wikiwikiweb.de/ConfigMarket for configuration in 
    # YOUR language that other people contributed.

    # The main wiki language, set the direction of the wiki pages
    default_lang = 'en'

    # Content options ---------------------------------------------------

    # Show users hostnames in RecentChanges
    show_hosts = 1                  

    # Enumerate headlines?
    show_section_numbers = 0

    # Charts size, require gdchart (Set to None to disable).
    chart_options = {'width': 600, 'height': 300}   

    # Enable textchas.
    textchas_disabled_group = u"TrustedEditorsGroup"
    textchas = {
        'en': {
           #u"Type peanut in here:": ur" *(?i)peanut *",
           #u"Are you a friend or foe?": ur" *(?i)(friend|foe) *",
           #u"Are you a bot, yes or no?": ur" *(?i)(no|yes) *",
           #u"Say cheese:": ur" *(?i)cheese *",
           #u"Say friend and enter:": ur" *(?i)friend *",
           #u"What does J in jython stand for?": ur" *(?i)java *",
           # New ones (2013-02-14):
           #u"What does Jython's interactive prompt look like?": ur" *>>> *",
           #u"Say green but do not say blue.": ur" *(?i)green *",
           #u"What is the smallest number in 10, 5, 11, 15?": ur" *(?i)(5|five) *",
           #u"What is George Washington's last name?": ur" *(?i)washington *",
           #u"How many wings does a typical bird have?": ur" .*(?i)(2|two) .*",
           # New ones 2013-03-20:
           u"Which programming language does Jython implement?": ur" *(?i)python *",
           u"Jython is written in": ur" *(?i)java *",
            #u"What does Jython's interactive prompt look like?": ur" *>>> *",
            u"What is van Rossum's first name?": ur" *(?i)guido *",
            u"Which foundation protects the Jython IP?": ur" *(?i)(psf|python +software +foundation|python +software|python +foundation) *",
            u"x = 1; x += 1; x ==": ur" *2 *",
            u"x = 2; x /= 2; x ==": ur" *(1|1.0) *",
            u"l = [1,2,3]; l.remove(1); l[0] ==": ur" *2 *",
            u"l = [1,2,3]; del l[1]; l[0] ==": ur" *1 *",
            u"s = 'guido'; s[3:5] ==": ur" *(?i)do *",
            u"x = range(10,18,2)[2]; x ==": ur" *14 *",
            u"x = map(lambda x:x**2,range(10))[3]; x ==": ur" *9 *",
        },
    }
