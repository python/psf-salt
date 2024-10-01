# Test redirection of documents moved from Python 2.7 to Python 3.0


## Test: Redirect c-api/class.html -> c-api/
GET {{host}}/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/c-api/"

GET {{host}}/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/c-api/"

GET {{host}}/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/c-api/"

GET {{host}}/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/c-api/"

GET {{host}}/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/c-api/"

GET {{host}}/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/c-api/"

GET {{host}}/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/c-api/"

GET {{host}}/es/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/c-api/"

GET {{host}}/es/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/c-api/"

GET {{host}}/es/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/c-api/"

GET {{host}}/es/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/c-api/"

GET {{host}}/es/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/c-api/"

GET {{host}}/es/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/c-api/"

GET {{host}}/es/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/c-api/"

GET {{host}}/fr/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/c-api/"

GET {{host}}/fr/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/c-api/"

GET {{host}}/fr/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/c-api/"

GET {{host}}/fr/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/c-api/"

GET {{host}}/fr/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/c-api/"

GET {{host}}/fr/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/c-api/"

GET {{host}}/fr/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/c-api/"

GET {{host}}/id/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/c-api/"

GET {{host}}/id/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/c-api/"

GET {{host}}/id/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/c-api/"

GET {{host}}/id/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/c-api/"

GET {{host}}/id/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/c-api/"

GET {{host}}/id/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/c-api/"

GET {{host}}/id/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/c-api/"

GET {{host}}/it/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/c-api/"

GET {{host}}/it/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/c-api/"

GET {{host}}/it/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/c-api/"

GET {{host}}/it/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/c-api/"

GET {{host}}/it/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/c-api/"

GET {{host}}/it/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/c-api/"

GET {{host}}/it/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/c-api/"

GET {{host}}/ja/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/c-api/"

GET {{host}}/ja/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/c-api/"

GET {{host}}/ja/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/c-api/"

GET {{host}}/ja/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/c-api/"

GET {{host}}/ja/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/c-api/"

GET {{host}}/ja/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/c-api/"

GET {{host}}/ja/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/c-api/"

GET {{host}}/ko/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/c-api/"

GET {{host}}/ko/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/c-api/"

GET {{host}}/ko/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/c-api/"

GET {{host}}/ko/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/c-api/"

GET {{host}}/ko/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/c-api/"

GET {{host}}/ko/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/c-api/"

GET {{host}}/ko/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/c-api/"

GET {{host}}/pl/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/c-api/"

GET {{host}}/pl/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/c-api/"

GET {{host}}/pl/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/c-api/"

GET {{host}}/pl/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/c-api/"

GET {{host}}/pl/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/c-api/"

GET {{host}}/pl/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/c-api/"

GET {{host}}/pl/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/c-api/"

GET {{host}}/pt-br/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/c-api/"

GET {{host}}/pt-br/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/c-api/"

GET {{host}}/pt-br/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/c-api/"

GET {{host}}/pt-br/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/c-api/"

GET {{host}}/pt-br/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/c-api/"

GET {{host}}/pt-br/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/c-api/"

GET {{host}}/pt-br/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/c-api/"

GET {{host}}/tr/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/c-api/"

GET {{host}}/tr/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/c-api/"

GET {{host}}/tr/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/c-api/"

GET {{host}}/tr/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/c-api/"

GET {{host}}/tr/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/c-api/"

GET {{host}}/tr/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/c-api/"

GET {{host}}/tr/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/c-api/"

GET {{host}}/uk/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/c-api/"

GET {{host}}/uk/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/c-api/"

GET {{host}}/uk/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/c-api/"

GET {{host}}/uk/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/c-api/"

GET {{host}}/uk/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/c-api/"

GET {{host}}/uk/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/c-api/"

GET {{host}}/uk/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/c-api/"

GET {{host}}/zh-cn/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/c-api/"

GET {{host}}/zh-cn/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/c-api/"

GET {{host}}/zh-cn/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/c-api/"

GET {{host}}/zh-cn/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/c-api/"

GET {{host}}/zh-cn/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/c-api/"

GET {{host}}/zh-cn/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/c-api/"

GET {{host}}/zh-cn/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/c-api/"

GET {{host}}/zh-tw/3/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/c-api/"

GET {{host}}/zh-tw/3.5/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/c-api/"

GET {{host}}/zh-tw/3.6/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/c-api/"

GET {{host}}/zh-tw/3.7/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/c-api/"

GET {{host}}/zh-tw/3.8/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/c-api/"

GET {{host}}/zh-tw/3.9/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/c-api/"

GET {{host}}/zh-tw/3.10/c-api/class.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/c-api/"


## Test: Redirect c-api/cobject.html -> c-api/
GET {{host}}/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/c-api/"

GET {{host}}/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/c-api/"

GET {{host}}/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/c-api/"

GET {{host}}/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/c-api/"

GET {{host}}/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/c-api/"

GET {{host}}/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/c-api/"

GET {{host}}/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/c-api/"

GET {{host}}/es/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/c-api/"

GET {{host}}/es/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/c-api/"

GET {{host}}/es/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/c-api/"

GET {{host}}/es/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/c-api/"

GET {{host}}/es/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/c-api/"

GET {{host}}/es/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/c-api/"

GET {{host}}/es/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/c-api/"

GET {{host}}/fr/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/c-api/"

GET {{host}}/fr/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/c-api/"

GET {{host}}/fr/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/c-api/"

GET {{host}}/fr/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/c-api/"

GET {{host}}/fr/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/c-api/"

GET {{host}}/fr/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/c-api/"

GET {{host}}/fr/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/c-api/"

GET {{host}}/id/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/c-api/"

GET {{host}}/id/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/c-api/"

GET {{host}}/id/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/c-api/"

GET {{host}}/id/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/c-api/"

GET {{host}}/id/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/c-api/"

GET {{host}}/id/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/c-api/"

GET {{host}}/id/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/c-api/"

GET {{host}}/it/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/c-api/"

GET {{host}}/it/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/c-api/"

GET {{host}}/it/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/c-api/"

GET {{host}}/it/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/c-api/"

GET {{host}}/it/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/c-api/"

GET {{host}}/it/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/c-api/"

GET {{host}}/it/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/c-api/"

GET {{host}}/ja/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/c-api/"

GET {{host}}/ja/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/c-api/"

GET {{host}}/ja/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/c-api/"

GET {{host}}/ja/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/c-api/"

GET {{host}}/ja/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/c-api/"

GET {{host}}/ja/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/c-api/"

GET {{host}}/ja/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/c-api/"

GET {{host}}/ko/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/c-api/"

GET {{host}}/ko/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/c-api/"

GET {{host}}/ko/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/c-api/"

GET {{host}}/ko/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/c-api/"

GET {{host}}/ko/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/c-api/"

GET {{host}}/ko/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/c-api/"

GET {{host}}/ko/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/c-api/"

GET {{host}}/pl/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/c-api/"

GET {{host}}/pl/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/c-api/"

GET {{host}}/pl/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/c-api/"

GET {{host}}/pl/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/c-api/"

GET {{host}}/pl/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/c-api/"

GET {{host}}/pl/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/c-api/"

GET {{host}}/pl/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/c-api/"

GET {{host}}/pt-br/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/c-api/"

GET {{host}}/pt-br/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/c-api/"

GET {{host}}/pt-br/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/c-api/"

GET {{host}}/pt-br/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/c-api/"

GET {{host}}/pt-br/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/c-api/"

GET {{host}}/pt-br/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/c-api/"

GET {{host}}/pt-br/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/c-api/"

GET {{host}}/tr/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/c-api/"

GET {{host}}/tr/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/c-api/"

GET {{host}}/tr/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/c-api/"

GET {{host}}/tr/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/c-api/"

GET {{host}}/tr/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/c-api/"

GET {{host}}/tr/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/c-api/"

GET {{host}}/tr/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/c-api/"

GET {{host}}/uk/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/c-api/"

GET {{host}}/uk/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/c-api/"

GET {{host}}/uk/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/c-api/"

GET {{host}}/uk/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/c-api/"

GET {{host}}/uk/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/c-api/"

GET {{host}}/uk/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/c-api/"

GET {{host}}/uk/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/c-api/"

GET {{host}}/zh-cn/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/c-api/"

GET {{host}}/zh-cn/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/c-api/"

GET {{host}}/zh-cn/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/c-api/"

GET {{host}}/zh-cn/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/c-api/"

GET {{host}}/zh-cn/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/c-api/"

GET {{host}}/zh-cn/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/c-api/"

GET {{host}}/zh-cn/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/c-api/"

GET {{host}}/zh-tw/3/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/c-api/"

GET {{host}}/zh-tw/3.5/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/c-api/"

GET {{host}}/zh-tw/3.6/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/c-api/"

GET {{host}}/zh-tw/3.7/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/c-api/"

GET {{host}}/zh-tw/3.8/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/c-api/"

GET {{host}}/zh-tw/3.9/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/c-api/"

GET {{host}}/zh-tw/3.10/c-api/cobject.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/c-api/"


## Test: Redirect c-api/int.html -> c-api/
GET {{host}}/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/c-api/"

GET {{host}}/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/c-api/"

GET {{host}}/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/c-api/"

GET {{host}}/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/c-api/"

GET {{host}}/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/c-api/"

GET {{host}}/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/c-api/"

GET {{host}}/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/c-api/"

GET {{host}}/es/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/c-api/"

GET {{host}}/es/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/c-api/"

GET {{host}}/es/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/c-api/"

GET {{host}}/es/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/c-api/"

GET {{host}}/es/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/c-api/"

GET {{host}}/es/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/c-api/"

GET {{host}}/es/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/c-api/"

GET {{host}}/fr/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/c-api/"

GET {{host}}/fr/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/c-api/"

GET {{host}}/fr/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/c-api/"

GET {{host}}/fr/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/c-api/"

GET {{host}}/fr/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/c-api/"

GET {{host}}/fr/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/c-api/"

GET {{host}}/fr/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/c-api/"

GET {{host}}/id/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/c-api/"

GET {{host}}/id/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/c-api/"

GET {{host}}/id/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/c-api/"

GET {{host}}/id/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/c-api/"

GET {{host}}/id/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/c-api/"

GET {{host}}/id/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/c-api/"

GET {{host}}/id/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/c-api/"

GET {{host}}/it/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/c-api/"

GET {{host}}/it/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/c-api/"

GET {{host}}/it/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/c-api/"

GET {{host}}/it/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/c-api/"

GET {{host}}/it/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/c-api/"

GET {{host}}/it/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/c-api/"

GET {{host}}/it/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/c-api/"

GET {{host}}/ja/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/c-api/"

GET {{host}}/ja/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/c-api/"

GET {{host}}/ja/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/c-api/"

GET {{host}}/ja/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/c-api/"

GET {{host}}/ja/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/c-api/"

GET {{host}}/ja/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/c-api/"

GET {{host}}/ja/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/c-api/"

GET {{host}}/ko/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/c-api/"

GET {{host}}/ko/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/c-api/"

GET {{host}}/ko/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/c-api/"

GET {{host}}/ko/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/c-api/"

GET {{host}}/ko/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/c-api/"

GET {{host}}/ko/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/c-api/"

GET {{host}}/ko/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/c-api/"

GET {{host}}/pl/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/c-api/"

GET {{host}}/pl/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/c-api/"

GET {{host}}/pl/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/c-api/"

GET {{host}}/pl/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/c-api/"

GET {{host}}/pl/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/c-api/"

GET {{host}}/pl/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/c-api/"

GET {{host}}/pl/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/c-api/"

GET {{host}}/pt-br/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/c-api/"

GET {{host}}/pt-br/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/c-api/"

GET {{host}}/pt-br/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/c-api/"

GET {{host}}/pt-br/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/c-api/"

GET {{host}}/pt-br/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/c-api/"

GET {{host}}/pt-br/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/c-api/"

GET {{host}}/pt-br/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/c-api/"

GET {{host}}/tr/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/c-api/"

GET {{host}}/tr/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/c-api/"

GET {{host}}/tr/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/c-api/"

GET {{host}}/tr/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/c-api/"

GET {{host}}/tr/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/c-api/"

GET {{host}}/tr/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/c-api/"

GET {{host}}/tr/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/c-api/"

GET {{host}}/uk/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/c-api/"

GET {{host}}/uk/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/c-api/"

GET {{host}}/uk/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/c-api/"

GET {{host}}/uk/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/c-api/"

GET {{host}}/uk/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/c-api/"

GET {{host}}/uk/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/c-api/"

GET {{host}}/uk/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/c-api/"

GET {{host}}/zh-cn/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/c-api/"

GET {{host}}/zh-cn/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/c-api/"

GET {{host}}/zh-cn/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/c-api/"

GET {{host}}/zh-cn/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/c-api/"

GET {{host}}/zh-cn/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/c-api/"

GET {{host}}/zh-cn/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/c-api/"

GET {{host}}/zh-cn/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/c-api/"

GET {{host}}/zh-tw/3/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/c-api/"

GET {{host}}/zh-tw/3.5/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/c-api/"

GET {{host}}/zh-tw/3.6/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/c-api/"

GET {{host}}/zh-tw/3.7/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/c-api/"

GET {{host}}/zh-tw/3.8/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/c-api/"

GET {{host}}/zh-tw/3.9/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/c-api/"

GET {{host}}/zh-tw/3.10/c-api/int.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/c-api/"


## Test: Redirect c-api/string.html -> c-api/
GET {{host}}/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/c-api/"

GET {{host}}/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/c-api/"

GET {{host}}/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/c-api/"

GET {{host}}/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/c-api/"

GET {{host}}/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/c-api/"

GET {{host}}/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/c-api/"

GET {{host}}/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/c-api/"

GET {{host}}/es/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/c-api/"

GET {{host}}/es/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/c-api/"

GET {{host}}/es/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/c-api/"

GET {{host}}/es/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/c-api/"

GET {{host}}/es/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/c-api/"

GET {{host}}/es/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/c-api/"

GET {{host}}/es/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/c-api/"

GET {{host}}/fr/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/c-api/"

GET {{host}}/fr/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/c-api/"

GET {{host}}/fr/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/c-api/"

GET {{host}}/fr/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/c-api/"

GET {{host}}/fr/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/c-api/"

GET {{host}}/fr/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/c-api/"

GET {{host}}/fr/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/c-api/"

GET {{host}}/id/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/c-api/"

GET {{host}}/id/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/c-api/"

GET {{host}}/id/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/c-api/"

GET {{host}}/id/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/c-api/"

GET {{host}}/id/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/c-api/"

GET {{host}}/id/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/c-api/"

GET {{host}}/id/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/c-api/"

GET {{host}}/it/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/c-api/"

GET {{host}}/it/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/c-api/"

GET {{host}}/it/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/c-api/"

GET {{host}}/it/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/c-api/"

GET {{host}}/it/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/c-api/"

GET {{host}}/it/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/c-api/"

GET {{host}}/it/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/c-api/"

GET {{host}}/ja/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/c-api/"

GET {{host}}/ja/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/c-api/"

GET {{host}}/ja/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/c-api/"

GET {{host}}/ja/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/c-api/"

GET {{host}}/ja/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/c-api/"

GET {{host}}/ja/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/c-api/"

GET {{host}}/ja/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/c-api/"

GET {{host}}/ko/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/c-api/"

GET {{host}}/ko/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/c-api/"

GET {{host}}/ko/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/c-api/"

GET {{host}}/ko/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/c-api/"

GET {{host}}/ko/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/c-api/"

GET {{host}}/ko/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/c-api/"

GET {{host}}/ko/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/c-api/"

GET {{host}}/pl/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/c-api/"

GET {{host}}/pl/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/c-api/"

GET {{host}}/pl/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/c-api/"

GET {{host}}/pl/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/c-api/"

GET {{host}}/pl/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/c-api/"

GET {{host}}/pl/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/c-api/"

GET {{host}}/pl/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/c-api/"

GET {{host}}/pt-br/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/c-api/"

GET {{host}}/pt-br/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/c-api/"

GET {{host}}/pt-br/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/c-api/"

GET {{host}}/pt-br/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/c-api/"

GET {{host}}/pt-br/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/c-api/"

GET {{host}}/pt-br/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/c-api/"

GET {{host}}/pt-br/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/c-api/"

GET {{host}}/tr/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/c-api/"

GET {{host}}/tr/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/c-api/"

GET {{host}}/tr/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/c-api/"

GET {{host}}/tr/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/c-api/"

GET {{host}}/tr/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/c-api/"

GET {{host}}/tr/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/c-api/"

GET {{host}}/tr/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/c-api/"

GET {{host}}/uk/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/c-api/"

GET {{host}}/uk/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/c-api/"

GET {{host}}/uk/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/c-api/"

GET {{host}}/uk/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/c-api/"

GET {{host}}/uk/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/c-api/"

GET {{host}}/uk/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/c-api/"

GET {{host}}/uk/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/c-api/"

GET {{host}}/zh-cn/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/c-api/"

GET {{host}}/zh-cn/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/c-api/"

GET {{host}}/zh-cn/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/c-api/"

GET {{host}}/zh-cn/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/c-api/"

GET {{host}}/zh-cn/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/c-api/"

GET {{host}}/zh-cn/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/c-api/"

GET {{host}}/zh-cn/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/c-api/"

GET {{host}}/zh-tw/3/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/c-api/"

GET {{host}}/zh-tw/3.5/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/c-api/"

GET {{host}}/zh-tw/3.6/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/c-api/"

GET {{host}}/zh-tw/3.7/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/c-api/"

GET {{host}}/zh-tw/3.8/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/c-api/"

GET {{host}}/zh-tw/3.9/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/c-api/"

GET {{host}}/zh-tw/3.10/c-api/string.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/c-api/"
