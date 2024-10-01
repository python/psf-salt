# Test redirection of documents moved from Python 2.7 to Python 3.0


## Test: Redirect library/email.util.html -> library/email.utils.html
GET {{host}}/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/library/email.utils.html"

GET {{host}}/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/library/email.utils.html"

GET {{host}}/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/library/email.utils.html"

GET {{host}}/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/library/email.utils.html"

GET {{host}}/es/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/library/email.utils.html"

GET {{host}}/es/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/library/email.utils.html"

GET {{host}}/es/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/library/email.utils.html"

GET {{host}}/es/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/library/email.utils.html"

GET {{host}}/fr/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/library/email.utils.html"

GET {{host}}/fr/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/library/email.utils.html"

GET {{host}}/fr/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/library/email.utils.html"

GET {{host}}/fr/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/library/email.utils.html"

GET {{host}}/id/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/library/email.utils.html"

GET {{host}}/id/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/library/email.utils.html"

GET {{host}}/id/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/library/email.utils.html"

GET {{host}}/id/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/library/email.utils.html"

GET {{host}}/it/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/library/email.utils.html"

GET {{host}}/it/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/library/email.utils.html"

GET {{host}}/it/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/library/email.utils.html"

GET {{host}}/it/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/library/email.utils.html"

GET {{host}}/ja/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/library/email.utils.html"

GET {{host}}/ja/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/library/email.utils.html"

GET {{host}}/ja/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/library/email.utils.html"

GET {{host}}/ja/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/library/email.utils.html"

GET {{host}}/ko/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/library/email.utils.html"

GET {{host}}/ko/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/library/email.utils.html"

GET {{host}}/ko/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/library/email.utils.html"

GET {{host}}/ko/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/library/email.utils.html"

GET {{host}}/pl/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/library/email.utils.html"

GET {{host}}/pl/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/library/email.utils.html"

GET {{host}}/pl/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/library/email.utils.html"

GET {{host}}/pl/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/library/email.utils.html"

GET {{host}}/pt-br/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/library/email.utils.html"

GET {{host}}/pt-br/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/library/email.utils.html"

GET {{host}}/pt-br/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/library/email.utils.html"

GET {{host}}/pt-br/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/library/email.utils.html"

GET {{host}}/tr/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/library/email.utils.html"

GET {{host}}/tr/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/library/email.utils.html"

GET {{host}}/tr/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/library/email.utils.html"

GET {{host}}/tr/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/library/email.utils.html"

GET {{host}}/uk/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/library/email.utils.html"

GET {{host}}/uk/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/library/email.utils.html"

GET {{host}}/uk/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/library/email.utils.html"

GET {{host}}/uk/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/library/email.utils.html"

GET {{host}}/zh-cn/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/library/email.utils.html"

GET {{host}}/zh-cn/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/library/email.utils.html"

GET {{host}}/zh-cn/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/library/email.utils.html"

GET {{host}}/zh-cn/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/library/email.utils.html"

GET {{host}}/zh-tw/3/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/library/email.utils.html"

GET {{host}}/zh-tw/3.6/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/library/email.utils.html"

GET {{host}}/zh-tw/3.7/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/library/email.utils.html"

GET {{host}}/zh-tw/3.8/library/email.util.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/library/email.utils.html"
