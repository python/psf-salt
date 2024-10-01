# Assert that the modules removed in Python 3.0 (PEP 3108)
# are redirected to the root.


## Test: Redirect library/aepack.html -> ''
GET {{host}}/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/aepack.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/aetools.html -> ''
GET {{host}}/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/aetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/aetypes.html -> ''
GET {{host}}/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/aetypes.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/al.html -> ''
GET {{host}}/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/al.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/autogil.html -> ''
GET {{host}}/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/autogil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/bastion.html -> ''
GET {{host}}/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/bastion.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/bsddb.html -> ''
GET {{host}}/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/bsddb.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/carbon.html -> ''
GET {{host}}/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/carbon.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/cd.html -> ''
GET {{host}}/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/cd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/colorpicker.html -> ''
GET {{host}}/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/colorpicker.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/commands.html -> ''
GET {{host}}/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/commands.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/compiler.html -> ''
GET {{host}}/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/compiler.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/dbhash.html -> ''
GET {{host}}/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/dbhash.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/dircache.html -> ''
GET {{host}}/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/dircache.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/dl.html -> ''
GET {{host}}/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/dl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/dummy_thread.html -> ''
GET {{host}}/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/dummy_thread.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/easydialogs.html -> ''
GET {{host}}/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/easydialogs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/fl.html -> ''
GET {{host}}/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/fl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/fm.html -> ''
GET {{host}}/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/fm.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/fpectl.html -> ''
GET {{host}}/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/fpectl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/fpformat.html -> ''
GET {{host}}/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/fpformat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/framework.html -> ''
GET {{host}}/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/framework.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/future_builtins.html -> ''
GET {{host}}/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/future_builtins.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/gensuitemodule.html -> ''
GET {{host}}/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/gensuitemodule.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/gl.html -> ''
GET {{host}}/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/gl.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/hotshot.html -> ''
GET {{host}}/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/hotshot.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/htmllib.html -> ''
GET {{host}}/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/htmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/ic.html -> ''
GET {{host}}/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/ic.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/imageop.html -> ''
GET {{host}}/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/imageop.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/imgfile.html -> ''
GET {{host}}/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/imgfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/imputil.html -> ''
GET {{host}}/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/imputil.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/jpeg.html -> ''
GET {{host}}/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/jpeg.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/mac.html -> ''
GET {{host}}/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/mac.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/macos.html -> ''
GET {{host}}/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/macos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/macosa.html -> ''
GET {{host}}/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/macosa.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/macostools.html -> ''
GET {{host}}/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/macostools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/md5.html -> ''
GET {{host}}/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/md5.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/mhlib.html -> ''
GET {{host}}/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/mhlib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/mimetools.html -> ''
GET {{host}}/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/mimetools.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/mimewriter.html -> ''
GET {{host}}/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/mimewriter.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/mimify.html -> ''
GET {{host}}/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/mimify.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/miniaeframe.html -> ''
GET {{host}}/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/miniaeframe.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/multifile.html -> ''
GET {{host}}/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/multifile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/mutex.html -> ''
GET {{host}}/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/mutex.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/new.html -> ''
GET {{host}}/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/new.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/popen2.html -> ''
GET {{host}}/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/popen2.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/posixfile.html -> ''
GET {{host}}/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/posixfile.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/restricted.html -> ''
GET {{host}}/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/restricted.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/rexec.html -> ''
GET {{host}}/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/rexec.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/rfc822.html -> ''
GET {{host}}/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/rfc822.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/sgi.html -> ''
GET {{host}}/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/sgi.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/sgmllib.html -> ''
GET {{host}}/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/sgmllib.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/sha.html -> ''
GET {{host}}/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/sha.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/someos.html -> ''
GET {{host}}/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/someos.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/statvfs.html -> ''
GET {{host}}/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/statvfs.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/sun.html -> ''
GET {{host}}/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/sun.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/sunaudio.html -> ''
GET {{host}}/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/sunaudio.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"


## Test: Redirect library/user.html -> ''
GET {{host}}/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.5/"

GET {{host}}/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.6/"

GET {{host}}/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.7/"

GET {{host}}/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.8/"

GET {{host}}/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.9/"

GET {{host}}/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.10/"

GET {{host}}/es/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.5/"

GET {{host}}/es/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.6/"

GET {{host}}/es/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.7/"

GET {{host}}/es/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.8/"

GET {{host}}/es/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.9/"

GET {{host}}/es/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.10/"

GET {{host}}/fr/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.5/"

GET {{host}}/fr/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.6/"

GET {{host}}/fr/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.7/"

GET {{host}}/fr/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.8/"

GET {{host}}/fr/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.9/"

GET {{host}}/fr/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.10/"

GET {{host}}/id/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.5/"

GET {{host}}/id/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.6/"

GET {{host}}/id/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.7/"

GET {{host}}/id/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.8/"

GET {{host}}/id/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.9/"

GET {{host}}/id/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.10/"

GET {{host}}/it/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.5/"

GET {{host}}/it/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.6/"

GET {{host}}/it/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.7/"

GET {{host}}/it/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.8/"

GET {{host}}/it/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.9/"

GET {{host}}/it/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.10/"

GET {{host}}/ja/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.5/"

GET {{host}}/ja/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.6/"

GET {{host}}/ja/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.7/"

GET {{host}}/ja/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.8/"

GET {{host}}/ja/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.9/"

GET {{host}}/ja/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.10/"

GET {{host}}/ko/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.5/"

GET {{host}}/ko/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.6/"

GET {{host}}/ko/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.7/"

GET {{host}}/ko/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.8/"

GET {{host}}/ko/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.9/"

GET {{host}}/ko/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.10/"

GET {{host}}/pl/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.5/"

GET {{host}}/pl/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.6/"

GET {{host}}/pl/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.7/"

GET {{host}}/pl/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.8/"

GET {{host}}/pl/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.9/"

GET {{host}}/pl/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.10/"

GET {{host}}/pt-br/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.5/"

GET {{host}}/pt-br/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.6/"

GET {{host}}/pt-br/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.7/"

GET {{host}}/pt-br/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.8/"

GET {{host}}/pt-br/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.9/"

GET {{host}}/pt-br/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.10/"

GET {{host}}/tr/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.5/"

GET {{host}}/tr/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.6/"

GET {{host}}/tr/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.7/"

GET {{host}}/tr/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.8/"

GET {{host}}/tr/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.9/"

GET {{host}}/tr/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.10/"

GET {{host}}/uk/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.5/"

GET {{host}}/uk/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.6/"

GET {{host}}/uk/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.7/"

GET {{host}}/uk/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.8/"

GET {{host}}/uk/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.9/"

GET {{host}}/uk/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.10/"

GET {{host}}/zh-cn/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.5/"

GET {{host}}/zh-cn/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.6/"

GET {{host}}/zh-cn/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.7/"

GET {{host}}/zh-cn/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.8/"

GET {{host}}/zh-cn/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.9/"

GET {{host}}/zh-cn/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.10/"

GET {{host}}/zh-tw/3/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.5/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.5/"

GET {{host}}/zh-tw/3.6/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.6/"

GET {{host}}/zh-tw/3.7/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.7/"

GET {{host}}/zh-tw/3.8/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.8/"

GET {{host}}/zh-tw/3.9/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.9/"

GET {{host}}/zh-tw/3.10/library/user.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.10/"
