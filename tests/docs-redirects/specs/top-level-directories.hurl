# Assert that top-level directories are redirected to the Python 3 docs.

GET {{host}}/archives
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/archives"

GET {{host}}/c-api
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/c-api"

GET {{host}}/distutils
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/distutils"

GET {{host}}/extending
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/extending"

GET {{host}}/faq
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/faq"

GET {{host}}/howto
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/howto"

GET {{host}}/install
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/install"

GET {{host}}/library
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/library"

GET {{host}}/reference
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/reference"

GET {{host}}/tutorial
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/tutorial"

GET {{host}}/using
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/using"

GET {{host}}/whatsnew
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/whatsnew"

GET {{host}}/_images
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/_images"

GET {{host}}/_sources
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/_sources"

GET {{host}}/_static
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/_static"

GET {{host}}/archives/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/archives/spam"

GET {{host}}/c-api/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/c-api/spam"

GET {{host}}/distutils/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/distutils/spam"

GET {{host}}/extending/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/extending/spam"

GET {{host}}/faq/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/faq/spam"

GET {{host}}/howto/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/howto/spam"

GET {{host}}/install/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/install/spam"

GET {{host}}/library/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/library/spam"

GET {{host}}/reference/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/reference/spam"

GET {{host}}/tutorial/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/tutorial/spam"

GET {{host}}/using/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/using/spam"

GET {{host}}/whatsnew/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/whatsnew/spam"

GET {{host}}/_images/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/_images/spam"

GET {{host}}/_sources/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/_sources/spam"

GET {{host}}/_static/spam
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/_static/spam"
