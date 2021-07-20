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

    @copyright: 2000-2004 by Juergen Hermann <jh@web.de>
    @license: GNU GPL, see COPYING for details.
"""

from farmconfig import FarmConfig

class Config(FarmConfig):

    # Wiki identity ----------------------------------------------------

    # Site name, used by default for wiki name-logo [Unicode]
    sitename = u'PSF Wiki'

    # Wiki logo. You can use an image, text or both. [Unicode]
    # Example: u'<img src="/wiki/mywiki.png" alt="My Wiki">My Wiki'
    # For no logo or text, use ''
    #logo_string = sitename
    logo_string = '<img src="/wiki/europython/img/psf-logo-wiki.png" alt="Private PSF Python Wiki">'

    # Default theme
    theme_default = 'europython'
    
    # The interwiki name used in interwiki links
    interwikiname = None


    # Critical setup  ---------------------------------------------------

    # Misconfiguration here will render your wiki unusable. Check that
    # all directories are accessible by the web server or moin server.

    # If you encounter problems, try to set data_dir and data_underlay_dir
    # to absolute paths.

    # Where your mutable wiki pages are. You want to make regular
    # backups of this directory.
    data_dir = '/data/moin/instances/psf/data/'

    # Security ----------------------------------------------------------

    # Security critical actions (disabled by default)
    # Uncomment to enable options you like.
    superuser = ['EWDurbin']

    # IMPORTANT: grant yourself admin rights! replace YourName with
    # your user name. See HelpOnAccessControlLists for more help.
    acl_rights_before = u"AdminGroup:read,write,delete,revert,admin"
    acl_rights_default = u""
    acl_rights_after = u"MembersGroup:read,write,delete,revert All:read"
    
    # Link spam protection for public wikis (Uncomment to enable)
    # Needs a reliable internet connection.
    #from MoinMoin.util.antispam import SecurityPolicy

    # Enable textchas.
    textchas_disabled_group = u"MembersGroup"
    textchas = {
        'en': {
            #u"How many words are in this question?": ur" *(7|(?i)seven) *",
            #u"What is Abraham Lincoln's first name?": ur" *(?i)abraham *",
            #u"What does Python's interactive prompt look like?": ur" *>>> *",
            u"What is van Rossum's first name?": ur" *(?i)guido *",
            u"Which foundation protects the Python IP?": ur" *(?i)(psf|python +software +foundation|python +software|python +foundation) *",
            u"x = 1; x += 1; x ==": ur" *(?i)(2|two) *",
            u"x = 2; x /= 2; x ==": ur" *(?i)(1|1.0|one) *",
            u"l = [1,2,3]; l.remove(1); l[0] ==": ur" *(?i)(2|two) *",
            u"l = [1,2,3]; del l[1]; l[0] ==": ur" *(?i)(1|one) *",
            u"s = 'guido'; s[3:5] ==": ur" *['\"]?(?i)do['\"]? *",
            u"PyPI is also called": ur" *(?i)(cheese *shop) *",
            u"The cheeseshop is also called": ur" *(?i)(py *pi) *",
        },
    }
    
    # Add your wikis important pages at the end. It is not recommended to
    # remove the default links.  Leave room for user links - don't use
    # more than 6 short items.
    # You MUST use Unicode strings here, but you need not use localized
    # page names for system and help pages, those will be used automatically
    # according to the user selected language. [Unicode]
    navi_bar = [
        # Will use page_front_page, (default FrontPage)
        u'%(page_front_page)s',
        u'Contents',
        u'RecentChanges',
        u'FindPage',
        u'HelpContents',
    ]

    page_footer2 = '<p style="text-align: center; font-size: 85%"><a href="/psf/">Unable to view page? See the FrontPage for instructions.</a></p>'

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



