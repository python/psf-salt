# Assert that full version archives are redirected to the short version.


## Test: English

GET {{host}}/3.12/archives/python-3.12.0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0a1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0a2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0a3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0a4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0a5-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a6-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0a6-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0a7-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0a7-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0b1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0b2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0b3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0b4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0b4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0rc1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0rc2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.0rc3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.5-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.5-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.5-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.5-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.5-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.5-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.5-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.5-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.5-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.5-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.12/archives/python-3.12.6-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.6-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/3.12/archives/python-3.12.6-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.6-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/3.12/archives/python-3.12.6-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.6-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/3.12/archives/python-3.12.6-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.6-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/3.12/archives/python-3.12.6-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/3.12/archives/python-3.12.6-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/3.12/archives/python-3.12.6-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/archives/python-3.12-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0a1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0a2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0a3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0a4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0a5-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0a6-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0a6-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0b1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0b2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0b3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0b4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0b4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0rc1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/3.13/archives/python-3.13.0rc2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/archives/python-3.13-docs.epub"

GET {{host}}/3.14/archives/python-3.14.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/archives/python-3.14-docs-html.tar.bz2"

GET {{host}}/3.14/archives/python-3.14.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/archives/python-3.14-docs-html.zip"

GET {{host}}/3.14/archives/python-3.14.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/archives/python-3.14-docs-pdf-a4.tar.bz2"

GET {{host}}/3.14/archives/python-3.14.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/archives/python-3.14-docs-pdf-a4.zip"

GET {{host}}/3.14/archives/python-3.14.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/archives/python-3.14-docs-texinfo.tar.bz2"

GET {{host}}/3.14/archives/python-3.14.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/archives/python-3.14-docs-texinfo.zip"

GET {{host}}/3.14/archives/python-3.14.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/archives/python-3.14-docs-text.tar.bz2"

GET {{host}}/3.14/archives/python-3.14.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/archives/python-3.14-docs-text.zip"

GET {{host}}/3.14/archives/python-3.14.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/archives/python-3.14-docs.epub"


## Test: French

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a5-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a6-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0a7-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0b4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.0rc3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.5-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/fr/3.12/archives/python-3.12.6-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/archives/python-3.12-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a5-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0a6-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0b4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/fr/3.13/archives/python-3.13.0rc2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/archives/python-3.13-docs.epub"

GET {{host}}/fr/3.14/archives/python-3.14.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/archives/python-3.14-docs-html.tar.bz2"

GET {{host}}/fr/3.14/archives/python-3.14.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/archives/python-3.14-docs-html.zip"

GET {{host}}/fr/3.14/archives/python-3.14.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/archives/python-3.14-docs-pdf-a4.tar.bz2"

GET {{host}}/fr/3.14/archives/python-3.14.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/archives/python-3.14-docs-pdf-a4.zip"

GET {{host}}/fr/3.14/archives/python-3.14.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/archives/python-3.14-docs-texinfo.tar.bz2"

GET {{host}}/fr/3.14/archives/python-3.14.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/archives/python-3.14-docs-texinfo.zip"

GET {{host}}/fr/3.14/archives/python-3.14.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/archives/python-3.14-docs-text.tar.bz2"

GET {{host}}/fr/3.14/archives/python-3.14.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/archives/python-3.14-docs-text.zip"

GET {{host}}/fr/3.14/archives/python-3.14.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/archives/python-3.14-docs.epub"


## Test: Portuguese (Brazil)

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a5-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a6-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0a7-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0b4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.0rc3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.5-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-html.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-texinfo.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.tar.bz2"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs-text.zip"

GET {{host}}/pt-br/3.12/archives/python-3.12.6-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/archives/python-3.12-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a5-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0a6-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b3-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0b4-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc1-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-html.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-pdf-letter.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-pdf-letter.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-pdf-letter.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-texinfo.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.tar.bz2"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs-text.zip"

GET {{host}}/pt-br/3.13/archives/python-3.13.0rc2-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/archives/python-3.13-docs.epub"

GET {{host}}/pt-br/3.14/archives/python-3.14.0a0-docs-html.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/archives/python-3.14-docs-html.tar.bz2"

GET {{host}}/pt-br/3.14/archives/python-3.14.0a0-docs-html.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/archives/python-3.14-docs-html.zip"

GET {{host}}/pt-br/3.14/archives/python-3.14.0a0-docs-pdf-a4.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/archives/python-3.14-docs-pdf-a4.tar.bz2"

GET {{host}}/pt-br/3.14/archives/python-3.14.0a0-docs-pdf-a4.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/archives/python-3.14-docs-pdf-a4.zip"

GET {{host}}/pt-br/3.14/archives/python-3.14.0a0-docs-texinfo.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/archives/python-3.14-docs-texinfo.tar.bz2"

GET {{host}}/pt-br/3.14/archives/python-3.14.0a0-docs-texinfo.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/archives/python-3.14-docs-texinfo.zip"

GET {{host}}/pt-br/3.14/archives/python-3.14.0a0-docs-text.tar.bz2
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/archives/python-3.14-docs-text.tar.bz2"

GET {{host}}/pt-br/3.14/archives/python-3.14.0a0-docs-text.zip
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/archives/python-3.14-docs-text.zip"

GET {{host}}/pt-br/3.14/archives/python-3.14.0a0-docs.epub
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/archives/python-3.14-docs.epub"
