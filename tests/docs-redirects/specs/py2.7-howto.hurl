# Test redirection of documents moved or deleted in Python 3.0


## Test: Redirect howto/doanddont.html -> ''
GET {{host}}/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/howto/doanddont.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect howto/webservers.html -> ''
GET {{host}}/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/howto/webservers.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"
