import os
import site

from paste.deploy import loadapp
from paste.script.util.logging_config import fileConfig

os.environ["HGENCODING"] = "UTF-8"
site.addsitedir("/kallithea/venv/lib/python2.7/site-packages")

prod_ini_path = '/kallithea/data/production.ini'
fileConfig(prod_ini_path)
application = loadapp('config:{}'.format(prod_ini_path))
