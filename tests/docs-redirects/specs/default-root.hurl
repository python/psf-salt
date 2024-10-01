# Assert that Python 3 is the default at the root.

GET {{host}}/
HTTP 302
[Asserts]
header "Location" == "http://localhost/3/"


# Assert that Python 3 is the default at the root of each translation.

GET {{host}}/es/
HTTP 302
[Asserts]
header "Location" == "http://localhost/es/3/"

GET {{host}}/fr/
HTTP 302
[Asserts]
header "Location" == "http://localhost/fr/3/"

GET {{host}}/id/
HTTP 302
[Asserts]
header "Location" == "http://localhost/id/3/"

GET {{host}}/it/
HTTP 302
[Asserts]
header "Location" == "http://localhost/it/3/"

GET {{host}}/ja/
HTTP 302
[Asserts]
header "Location" == "http://localhost/ja/3/"

GET {{host}}/ko/
HTTP 302
[Asserts]
header "Location" == "http://localhost/ko/3/"

GET {{host}}/pl/
HTTP 302
[Asserts]
header "Location" == "http://localhost/pl/3/"

GET {{host}}/pt-br/
HTTP 302
[Asserts]
header "Location" == "http://localhost/pt-br/3/"

GET {{host}}/tr/
HTTP 302
[Asserts]
header "Location" == "http://localhost/tr/3/"

GET {{host}}/uk/
HTTP 302
[Asserts]
header "Location" == "http://localhost/uk/3/"

GET {{host}}/zh-cn/
HTTP 302
[Asserts]
header "Location" == "http://localhost/zh-cn/3/"

GET {{host}}/zh-tw/
HTTP 302
[Asserts]
header "Location" == "http://localhost/zh-tw/3/"
