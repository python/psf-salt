# Assert that /ftp/ redirects to www.python.org/ftp

GET {{host}}/ftp/python/doc
HTTP 301
[Asserts]
header "Location" == "https://www.python.org/ftp/python/doc"

GET {{host}}/ftp/python/doc/3.4.5/python-3.4.5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://www.python.org/ftp/python/doc/3.4.5/python-3.4.5-docs-text.zip"
