# Test: Python 3 docs are the default at the root.
GET http://localhost:10000/
HTTP 302
[Asserts]
header "Location" == "http://localhost/3/"


# Test: Python 3 docs are the default at the root of each translations.
GET http://localhost:10000/es/
HTTP 302
[Asserts]
header "Location" == "http://localhost/es/3/"

GET http://localhost:10000/zh-tw/
HTTP 302
[Asserts]
header "Location" == "http://localhost/zh-tw/3/"


# Test: Some doc download pages link to docs.python.org/ftp instead of www.python.org/ftp.
GET http://localhost:10000/ftp/
HTTP 301
[Asserts]
header "Location" == "https://www.python.org/ftp/"

GET http://localhost:10000/ftp/some/url
HTTP 301
[Asserts]
header "Location" == "https://www.python.org/ftp/some/url"


# Test: py3k
GET http://localhost:10000/py3k
HTTP 301
[Asserts]
header "Location" == "https://localhost/3"

GET http://localhost:10000/py3k/some/url
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/some/url"


# Test: Smooth the switch between versions by mapping old files to their new location
GET http://localhost:10000/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/library/email.utils.html"

GET http://localhost:10000/es/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/library/email.utils.html"

GET http://localhost:10000/foobar/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/foobar/3/library/email.utils.html"

GET http://localhost:10000/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/library/email.utils.html"

GET http://localhost:10000/es/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/library/email.utils.html"
