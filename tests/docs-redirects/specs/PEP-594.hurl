# Assert that the modules removed in Python 3.13 (PEP 594)
# are redirected to the root


## Test: Redirect library/2to3.html -> ''
GET {{host}}/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/2to3.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/aifc.html -> ''
GET {{host}}/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/aifc.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/audioop.html -> ''
GET {{host}}/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/audioop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/cgi.html -> ''
GET {{host}}/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/cgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/cgitb.html -> ''
GET {{host}}/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/cgitb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/chunk.html -> ''
GET {{host}}/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/chunk.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/crypt.html -> ''
GET {{host}}/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/crypt.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/imghdr.html -> ''
GET {{host}}/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/imghdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/mailcap.html -> ''
GET {{host}}/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/mailcap.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/msilib.html -> ''
GET {{host}}/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/msilib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/nis.html -> ''
GET {{host}}/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/nis.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/nntplib.html -> ''
GET {{host}}/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/nntplib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/ossaudiodev.html -> ''
GET {{host}}/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/ossaudiodev.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/pipes.html -> ''
GET {{host}}/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/pipes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/sndhdr.html -> ''
GET {{host}}/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/sndhdr.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/spwd.html -> ''
GET {{host}}/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/spwd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/sunau.html -> ''
GET {{host}}/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/sunau.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/telnetlib.html -> ''
GET {{host}}/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/telnetlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/tkinter.tix.html -> ''
GET {{host}}/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/tkinter.tix.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/uu.html -> ''
GET {{host}}/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/uu.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/xdrlib.html -> ''
GET {{host}}/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3.13/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/xdrlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"
