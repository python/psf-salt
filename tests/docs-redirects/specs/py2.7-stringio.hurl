# Test redirection of documents moved from Python 2.7 to Python 3.0


## Test: Redirect library/stringio.html -> library/io.html#io.StringIO
GET {{host}}/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/library/io.html#io.StringIO"

GET {{host}}/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/library/io.html#io.StringIO"

GET {{host}}/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/library/io.html#io.StringIO"

GET {{host}}/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/library/io.html#io.StringIO"

GET {{host}}/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/library/io.html#io.StringIO"

GET {{host}}/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/library/io.html#io.StringIO"

GET {{host}}/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/library/io.html#io.StringIO"

GET {{host}}/es/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/library/io.html#io.StringIO"

GET {{host}}/es/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/library/io.html#io.StringIO"

GET {{host}}/es/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/library/io.html#io.StringIO"

GET {{host}}/es/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/library/io.html#io.StringIO"

GET {{host}}/es/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/library/io.html#io.StringIO"

GET {{host}}/es/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/library/io.html#io.StringIO"

GET {{host}}/es/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/library/io.html#io.StringIO"

GET {{host}}/fr/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/library/io.html#io.StringIO"

GET {{host}}/fr/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/library/io.html#io.StringIO"

GET {{host}}/fr/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/library/io.html#io.StringIO"

GET {{host}}/fr/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/library/io.html#io.StringIO"

GET {{host}}/fr/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/library/io.html#io.StringIO"

GET {{host}}/fr/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/library/io.html#io.StringIO"

GET {{host}}/fr/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/library/io.html#io.StringIO"

GET {{host}}/id/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/library/io.html#io.StringIO"

GET {{host}}/id/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/library/io.html#io.StringIO"

GET {{host}}/id/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/library/io.html#io.StringIO"

GET {{host}}/id/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/library/io.html#io.StringIO"

GET {{host}}/id/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/library/io.html#io.StringIO"

GET {{host}}/id/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/library/io.html#io.StringIO"

GET {{host}}/id/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/library/io.html#io.StringIO"

GET {{host}}/it/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/library/io.html#io.StringIO"

GET {{host}}/it/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/library/io.html#io.StringIO"

GET {{host}}/it/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/library/io.html#io.StringIO"

GET {{host}}/it/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/library/io.html#io.StringIO"

GET {{host}}/it/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/library/io.html#io.StringIO"

GET {{host}}/it/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/library/io.html#io.StringIO"

GET {{host}}/it/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/library/io.html#io.StringIO"

GET {{host}}/ja/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/library/io.html#io.StringIO"

GET {{host}}/ja/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/library/io.html#io.StringIO"

GET {{host}}/ja/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/library/io.html#io.StringIO"

GET {{host}}/ja/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/library/io.html#io.StringIO"

GET {{host}}/ja/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/library/io.html#io.StringIO"

GET {{host}}/ja/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/library/io.html#io.StringIO"

GET {{host}}/ja/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/library/io.html#io.StringIO"

GET {{host}}/ko/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/library/io.html#io.StringIO"

GET {{host}}/ko/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/library/io.html#io.StringIO"

GET {{host}}/ko/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/library/io.html#io.StringIO"

GET {{host}}/ko/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/library/io.html#io.StringIO"

GET {{host}}/ko/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/library/io.html#io.StringIO"

GET {{host}}/ko/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/library/io.html#io.StringIO"

GET {{host}}/ko/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/library/io.html#io.StringIO"

GET {{host}}/pl/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/library/io.html#io.StringIO"

GET {{host}}/pl/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/library/io.html#io.StringIO"

GET {{host}}/pl/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/library/io.html#io.StringIO"

GET {{host}}/pl/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/library/io.html#io.StringIO"

GET {{host}}/pl/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/library/io.html#io.StringIO"

GET {{host}}/pl/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/library/io.html#io.StringIO"

GET {{host}}/pl/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/library/io.html#io.StringIO"

GET {{host}}/pt-br/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/library/io.html#io.StringIO"

GET {{host}}/pt-br/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/library/io.html#io.StringIO"

GET {{host}}/pt-br/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/library/io.html#io.StringIO"

GET {{host}}/pt-br/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/library/io.html#io.StringIO"

GET {{host}}/pt-br/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/library/io.html#io.StringIO"

GET {{host}}/pt-br/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/library/io.html#io.StringIO"

GET {{host}}/pt-br/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/library/io.html#io.StringIO"

GET {{host}}/tr/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/library/io.html#io.StringIO"

GET {{host}}/tr/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/library/io.html#io.StringIO"

GET {{host}}/tr/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/library/io.html#io.StringIO"

GET {{host}}/tr/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/library/io.html#io.StringIO"

GET {{host}}/tr/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/library/io.html#io.StringIO"

GET {{host}}/tr/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/library/io.html#io.StringIO"

GET {{host}}/tr/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/library/io.html#io.StringIO"

GET {{host}}/uk/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/library/io.html#io.StringIO"

GET {{host}}/uk/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/library/io.html#io.StringIO"

GET {{host}}/uk/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/library/io.html#io.StringIO"

GET {{host}}/uk/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/library/io.html#io.StringIO"

GET {{host}}/uk/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/library/io.html#io.StringIO"

GET {{host}}/uk/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/library/io.html#io.StringIO"

GET {{host}}/uk/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/library/io.html#io.StringIO"

GET {{host}}/zh-cn/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/library/io.html#io.StringIO"

GET {{host}}/zh-cn/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/library/io.html#io.StringIO"

GET {{host}}/zh-cn/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/library/io.html#io.StringIO"

GET {{host}}/zh-cn/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/library/io.html#io.StringIO"

GET {{host}}/zh-cn/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/library/io.html#io.StringIO"

GET {{host}}/zh-cn/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/library/io.html#io.StringIO"

GET {{host}}/zh-cn/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/library/io.html#io.StringIO"

GET {{host}}/zh-tw/3/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/library/io.html#io.StringIO"

GET {{host}}/zh-tw/3.5/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/library/io.html#io.StringIO"

GET {{host}}/zh-tw/3.6/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/library/io.html#io.StringIO"

GET {{host}}/zh-tw/3.7/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/library/io.html#io.StringIO"

GET {{host}}/zh-tw/3.8/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/library/io.html#io.StringIO"

GET {{host}}/zh-tw/3.9/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/library/io.html#io.StringIO"

GET {{host}}/zh-tw/3.10/library/stringio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/library/io.html#io.StringIO"
