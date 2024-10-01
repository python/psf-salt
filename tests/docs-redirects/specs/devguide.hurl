# Assert that /devguide/ redirects to the Developer's Guide.

GET {{host}}/devguide/
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/"

GET {{host}}/devguide/index.html
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/index.html"


# Assert that /documenting/ redirects to the Developer's Guide.

GET {{host}}/documenting/
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documentation/start-documenting/"

GET {{host}}/documenting/index.html
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documentation/start-documenting/"

GET {{host}}/documenting/intro.html
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documentation/start-documenting/#introduction"

GET {{host}}/documenting/style.html
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documentation/style-guide/"

GET {{host}}/documenting/rest.html
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documentation/markup/"

GET {{host}}/documenting/markup.html
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documentation/markup/"

GET {{host}}/documenting/fromlatex.html
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documentation/markup/"

GET {{host}}/documenting/building.html
HTTP 301
[Asserts]
header "Location" == "https://devguide.python.org/documentation/start-documenting/#building-the-documentation"
