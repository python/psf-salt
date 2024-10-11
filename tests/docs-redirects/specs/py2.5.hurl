# Assert that pre-Python 2.5 URIs are redirected to their
# Python 2.6-and-later locations.

GET {{host}}/lib/
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/library/"

GET {{host}}/lib/module-base64.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/library/base64.html"

GET {{host}}/lib/module-sys.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/library/sys.html"

GET {{host}}/tut/
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/tutorial/"

GET {{host}}/tut/tut.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/tutorial/"

GET {{host}}/api/
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/c-api/"

GET {{host}}/ext/
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/extending/"

GET {{host}}/dist/
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/inst/
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/doc/
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documentation/start-documenting/"

GET {{host}}/ref/
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/reference/"
