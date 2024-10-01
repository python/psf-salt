# Assert that asynchat, asyncore, and smptd (removed in Python 3.12)
# are redirected to the root


## Test: Redirect library/asynchat.html -> ''
GET {{host}}/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/"

GET {{host}}/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.12/"

GET {{host}}/es/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/"

GET {{host}}/fr/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.12/"

GET {{host}}/id/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.12/"

GET {{host}}/it/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.12/"

GET {{host}}/ja/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.12/"

GET {{host}}/ko/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.12/"

GET {{host}}/pl/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/"

GET {{host}}/pt-br/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.12/"

GET {{host}}/tr/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.12/"

GET {{host}}/uk/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.12/"

GET {{host}}/zh-cn/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.12/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.12/"

GET {{host}}/zh-tw/3.13/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/asynchat.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/asyncore.html -> ''
GET {{host}}/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/"

GET {{host}}/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.12/"

GET {{host}}/es/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/"

GET {{host}}/fr/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.12/"

GET {{host}}/id/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.12/"

GET {{host}}/it/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.12/"

GET {{host}}/ja/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.12/"

GET {{host}}/ko/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.12/"

GET {{host}}/pl/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/"

GET {{host}}/pt-br/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.12/"

GET {{host}}/tr/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.12/"

GET {{host}}/uk/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.12/"

GET {{host}}/zh-cn/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.12/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.12/"

GET {{host}}/zh-tw/3.13/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/asyncore.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"


## Test: Redirect library/smtpd.html -> ''
GET {{host}}/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3/"

GET {{host}}/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.12/"

GET {{host}}/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.13/"

GET {{host}}/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/3.14/"

GET {{host}}/es/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3/"

GET {{host}}/es/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.12/"

GET {{host}}/es/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.13/"

GET {{host}}/es/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/es/3.14/"

GET {{host}}/fr/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3/"

GET {{host}}/fr/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.12/"

GET {{host}}/fr/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.13/"

GET {{host}}/fr/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/fr/3.14/"

GET {{host}}/id/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3/"

GET {{host}}/id/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.12/"

GET {{host}}/id/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.13/"

GET {{host}}/id/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/id/3.14/"

GET {{host}}/it/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3/"

GET {{host}}/it/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.12/"

GET {{host}}/it/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.13/"

GET {{host}}/it/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/it/3.14/"

GET {{host}}/ja/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3/"

GET {{host}}/ja/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.12/"

GET {{host}}/ja/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.13/"

GET {{host}}/ja/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ja/3.14/"

GET {{host}}/ko/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3/"

GET {{host}}/ko/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.12/"

GET {{host}}/ko/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.13/"

GET {{host}}/ko/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/ko/3.14/"

GET {{host}}/pl/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3/"

GET {{host}}/pl/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.12/"

GET {{host}}/pl/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.13/"

GET {{host}}/pl/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pl/3.14/"

GET {{host}}/pt-br/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3/"

GET {{host}}/pt-br/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.12/"

GET {{host}}/pt-br/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.13/"

GET {{host}}/pt-br/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/pt-br/3.14/"

GET {{host}}/tr/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3/"

GET {{host}}/tr/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.12/"

GET {{host}}/tr/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.13/"

GET {{host}}/tr/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/tr/3.14/"

GET {{host}}/uk/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3/"

GET {{host}}/uk/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.12/"

GET {{host}}/uk/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.13/"

GET {{host}}/uk/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/uk/3.14/"

GET {{host}}/zh-cn/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3/"

GET {{host}}/zh-cn/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.12/"

GET {{host}}/zh-cn/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.13/"

GET {{host}}/zh-cn/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-cn/3.14/"

GET {{host}}/zh-tw/3/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3/"

GET {{host}}/zh-tw/3.12/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.12/"

GET {{host}}/zh-tw/3.13/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.13/"

GET {{host}}/zh-tw/3.14/library/smtpd.html
HTTP 301
[Asserts]
header "Location" == "https://localhost/zh-tw/3.14/"
