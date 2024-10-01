# Assert that Py3k is Python 3.

GET {{host}}/py3k
HTTP 301
[Asserts]
header "Location" == "https://localhost/3"

GET {{host}}/py3k/whatsnew/3.0.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/whatsnew/3.0.html"
