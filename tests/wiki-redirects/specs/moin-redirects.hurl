# Assert that old /moin/ URLs redirect to the static archive.

GET {{host}}/moin/BeginnersGuide
HTTP 301
[Asserts]
header "Location" == "http://localhost/python/BeginnersGuide.html"

GET {{host}}/moin/PythonBooks
HTTP 301
[Asserts]
header "Location" == "http://localhost/python/PythonBooks.html"

GET {{host}}/moin/FrontPage
HTTP 301
[Asserts]
header "Location" == "http://localhost/python/FrontPage.html"


# Assert that /moin/ root redirects to /python/.

GET {{host}}/moin/
HTTP 301
[Asserts]
header "Location" == "http://localhost/python/"
