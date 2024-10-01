# Assert that top-level files are redirected to the Python 3 docs.

GET {{host}}/about.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/about.html"

GET {{host}}/about
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/about.html"

GET {{host}}/bugs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/bugs.html"

GET {{host}}/bugs
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/bugs.html"

GET {{host}}/contents.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/contents.html"

GET {{host}}/contents
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/contents.html"

GET {{host}}/copyright.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/copyright.html"

GET {{host}}/copyright
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/copyright.html"

GET {{host}}/download.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/download.html"

GET {{host}}/download
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/download.html"

GET {{host}}/genindex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/genindex.html.html"

GET {{host}}/genindex
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/genindex.html"

GET {{host}}/genindex-_.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/genindex-_.html.html"

GET {{host}}/genindex-_
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/genindex-_.html"

GET {{host}}/genindex-A.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/genindex-A.html.html"

GET {{host}}/genindex-A
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/genindex-A.html"

GET {{host}}/genindex-Symbols.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/genindex-Symbols.html.html"

GET {{host}}/genindex-Symbols
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/genindex-Symbols.html"

GET {{host}}/glossary.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/glossary.html"

GET {{host}}/glossary
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/glossary.html"

GET {{host}}/index.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/index.html"

GET {{host}}/index
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/index.html"

GET {{host}}/license.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/license.html"

GET {{host}}/license
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/license.html"

GET {{host}}/py-modindex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/py-modindex.html"

GET {{host}}/py-modindex
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/py-modindex.html"

GET {{host}}/search.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/search.html"

GET {{host}}/search
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/search.html"

GET {{host}}/searchindex.js
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/searchindex.js"

GET {{host}}/objects.inv
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/objects.inv"
