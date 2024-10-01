# Assert that pre-Python 2.5 URIs are redirected to their
# Python 2.6-and-later locations.

GET {{host}}/lib/
HTTP 301
[Asserts]
header "Location" == "https://localhost/library/"

GET {{host}}/lib/module-base64.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/library/base64.html"

GET {{host}}/lib/module-sys.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/library/sys.html"

GET {{host}}/tut/
HTTP 301
[Asserts]
header "Location" == "https://localhost/tutorial/"

GET {{host}}/tut/tut.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tutorial/"

GET {{host}}/api/
HTTP 301
[Asserts]
header "Location" == "https://localhost/c-api/"

GET {{host}}/ext/
HTTP 301
[Asserts]
header "Location" == "https://localhost/extending/"

GET {{host}}/dist/
HTTP 301
[Asserts]
header "Location" == "https://docs.python.org/distutils/"

GET {{host}}/inst/
HTTP 301
[Asserts]
header "Location" == "https://localhost/install/"

GET {{host}}/doc/
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documenting.html"

GET {{host}}/ref/
HTTP 301
[Asserts]
header "Location" == "https://localhost/reference/"
