# Test redirection of documents moved from Python 2.7 to Python 3.0


## Test: Redirect library/basehttpserver.html -> library/http.server.html
GET {{host}}/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/library/http.server.html"

GET {{host}}/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/library/http.server.html"

GET {{host}}/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/library/http.server.html"

GET {{host}}/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/library/http.server.html"

GET {{host}}/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/library/http.server.html"

GET {{host}}/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/library/http.server.html"

GET {{host}}/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/library/http.server.html"

GET {{host}}/es/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/library/http.server.html"

GET {{host}}/es/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/library/http.server.html"

GET {{host}}/es/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/library/http.server.html"

GET {{host}}/es/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/library/http.server.html"

GET {{host}}/es/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/library/http.server.html"

GET {{host}}/es/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/library/http.server.html"

GET {{host}}/es/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/library/http.server.html"

GET {{host}}/fr/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/library/http.server.html"

GET {{host}}/fr/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/library/http.server.html"

GET {{host}}/fr/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/library/http.server.html"

GET {{host}}/fr/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/library/http.server.html"

GET {{host}}/fr/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/library/http.server.html"

GET {{host}}/fr/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/library/http.server.html"

GET {{host}}/fr/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/library/http.server.html"

GET {{host}}/id/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/library/http.server.html"

GET {{host}}/id/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/library/http.server.html"

GET {{host}}/id/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/library/http.server.html"

GET {{host}}/id/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/library/http.server.html"

GET {{host}}/id/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/library/http.server.html"

GET {{host}}/id/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/library/http.server.html"

GET {{host}}/id/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/library/http.server.html"

GET {{host}}/it/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/library/http.server.html"

GET {{host}}/it/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/library/http.server.html"

GET {{host}}/it/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/library/http.server.html"

GET {{host}}/it/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/library/http.server.html"

GET {{host}}/it/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/library/http.server.html"

GET {{host}}/it/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/library/http.server.html"

GET {{host}}/it/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/library/http.server.html"

GET {{host}}/ja/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/library/http.server.html"

GET {{host}}/ja/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/library/http.server.html"

GET {{host}}/ja/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/library/http.server.html"

GET {{host}}/ja/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/library/http.server.html"

GET {{host}}/ja/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/library/http.server.html"

GET {{host}}/ja/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/library/http.server.html"

GET {{host}}/ja/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/library/http.server.html"

GET {{host}}/ko/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/library/http.server.html"

GET {{host}}/ko/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/library/http.server.html"

GET {{host}}/ko/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/library/http.server.html"

GET {{host}}/ko/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/library/http.server.html"

GET {{host}}/ko/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/library/http.server.html"

GET {{host}}/ko/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/library/http.server.html"

GET {{host}}/ko/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/library/http.server.html"

GET {{host}}/pl/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/library/http.server.html"

GET {{host}}/pl/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/library/http.server.html"

GET {{host}}/pl/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/library/http.server.html"

GET {{host}}/pl/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/library/http.server.html"

GET {{host}}/pl/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/library/http.server.html"

GET {{host}}/pl/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/library/http.server.html"

GET {{host}}/pl/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/library/http.server.html"

GET {{host}}/pt-br/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/library/http.server.html"

GET {{host}}/pt-br/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/library/http.server.html"

GET {{host}}/pt-br/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/library/http.server.html"

GET {{host}}/pt-br/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/library/http.server.html"

GET {{host}}/pt-br/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/library/http.server.html"

GET {{host}}/pt-br/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/library/http.server.html"

GET {{host}}/pt-br/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/library/http.server.html"

GET {{host}}/tr/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/library/http.server.html"

GET {{host}}/tr/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/library/http.server.html"

GET {{host}}/tr/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/library/http.server.html"

GET {{host}}/tr/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/library/http.server.html"

GET {{host}}/tr/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/library/http.server.html"

GET {{host}}/tr/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/library/http.server.html"

GET {{host}}/tr/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/library/http.server.html"

GET {{host}}/uk/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/library/http.server.html"

GET {{host}}/uk/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/library/http.server.html"

GET {{host}}/uk/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/library/http.server.html"

GET {{host}}/uk/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/library/http.server.html"

GET {{host}}/uk/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/library/http.server.html"

GET {{host}}/uk/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/library/http.server.html"

GET {{host}}/uk/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/library/http.server.html"

GET {{host}}/zh-cn/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/library/http.server.html"

GET {{host}}/zh-cn/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/library/http.server.html"

GET {{host}}/zh-cn/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/library/http.server.html"

GET {{host}}/zh-cn/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/library/http.server.html"

GET {{host}}/zh-cn/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/library/http.server.html"

GET {{host}}/zh-cn/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/library/http.server.html"

GET {{host}}/zh-cn/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/library/http.server.html"

GET {{host}}/zh-tw/3/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/library/http.server.html"

GET {{host}}/zh-tw/3.5/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/library/http.server.html"

GET {{host}}/zh-tw/3.6/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/library/http.server.html"

GET {{host}}/zh-tw/3.7/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/library/http.server.html"

GET {{host}}/zh-tw/3.8/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/library/http.server.html"

GET {{host}}/zh-tw/3.9/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/library/http.server.html"

GET {{host}}/zh-tw/3.10/library/basehttpserver.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/library/http.server.html"
