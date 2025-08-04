# Assert that the correct Surrogate-Key header is added

## Basic cases

GET {{host}}/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3"

GET {{host}}/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3"

GET {{host}}/3/whatsnew/3.0.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3"

## Symlinks

GET {{host}}/2/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2"

GET {{host}}/2/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2"

GET {{host}}/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/dev"

GET {{host}}/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/dev"

## Special cases (non HTML)

GET {{host}}/3/objects.inv
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3"

GET {{host}}/3//objects.inv
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3"

GET {{host}}/3/searchindex.js
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3"

GET {{host}}/3/_static/glossary.json
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3"

## Versions

GET {{host}}/2.0/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.0"

GET {{host}}/2.0/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.0"

GET {{host}}/2.1/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.1"

GET {{host}}/2.1/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.1"

GET {{host}}/2.2/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.2"

GET {{host}}/2.2/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.2"

GET {{host}}/2.3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.3"

GET {{host}}/2.3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.3"

GET {{host}}/2.4/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.4"

GET {{host}}/2.4/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.4"

GET {{host}}/2.5/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.5"

GET {{host}}/2.5/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.5"

GET {{host}}/2.6/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.6"

GET {{host}}/2.6/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.6"

GET {{host}}/2.7/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.7"

GET {{host}}/2.7/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/2.7"

GET {{host}}/3.0/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.0"

GET {{host}}/3.0/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.0"

GET {{host}}/3.1/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.1"

GET {{host}}/3.1/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.1"

GET {{host}}/3.2/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.2"

GET {{host}}/3.2/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.2"

GET {{host}}/3.3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.3"

GET {{host}}/3.3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.3"

GET {{host}}/3.4/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.4"

GET {{host}}/3.4/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.4"

GET {{host}}/3.5/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.5"

GET {{host}}/3.5/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.5"

GET {{host}}/3.6/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.6"

GET {{host}}/3.6/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.6"

GET {{host}}/3.7/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.7"

GET {{host}}/3.7/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.7"

GET {{host}}/3.8/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.8"

GET {{host}}/3.8/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.8"

GET {{host}}/3.9/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.9"

GET {{host}}/3.9/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.9"

GET {{host}}/3.10/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.10"

GET {{host}}/3.10/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.10"

GET {{host}}/3.11/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.11"

GET {{host}}/3.11/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.11"

GET {{host}}/3.12/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.12"

GET {{host}}/3.12/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.12"

GET {{host}}/3.13/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.13"

GET {{host}}/3.13/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.13"

GET {{host}}/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.14"

GET {{host}}/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "en/3.14"

## Languages

GET {{host}}/bn-in/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "bn-in/3"

GET {{host}}/bn-in/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "bn-in/3"

GET {{host}}/bn-in/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "bn-in/3.14"

GET {{host}}/bn-in/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "bn-in/3.14"

GET {{host}}/bn-in/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "bn-in/dev"

GET {{host}}/bn-in/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "bn-in/dev"

GET {{host}}/el/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "el/3"

GET {{host}}/el/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "el/3"

GET {{host}}/el/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "el/3.14"

GET {{host}}/el/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "el/3.14"

GET {{host}}/el/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "el/dev"

GET {{host}}/el/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "el/dev"

GET {{host}}/es/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "es/3"

GET {{host}}/es/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "es/3"

GET {{host}}/es/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "es/3.14"

GET {{host}}/es/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "es/3.14"

GET {{host}}/es/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "es/dev"

GET {{host}}/es/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "es/dev"

GET {{host}}/fr/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "fr/3"

GET {{host}}/fr/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "fr/3"

GET {{host}}/fr/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "fr/3.14"

GET {{host}}/fr/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "fr/3.14"

GET {{host}}/fr/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "fr/dev"

GET {{host}}/fr/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "fr/dev"

GET {{host}}/id/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "id/3"

GET {{host}}/id/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "id/3"

GET {{host}}/id/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "id/3.14"

GET {{host}}/id/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "id/3.14"

GET {{host}}/id/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "id/dev"

GET {{host}}/id/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "id/dev"

GET {{host}}/it/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "it/3"

GET {{host}}/it/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "it/3"

GET {{host}}/it/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "it/3.14"

GET {{host}}/it/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "it/3.14"

GET {{host}}/it/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "it/dev"

GET {{host}}/it/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "it/dev"

GET {{host}}/ja/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "ja/3"

GET {{host}}/ja/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "ja/3"

GET {{host}}/ja/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "ja/3.14"

GET {{host}}/ja/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "ja/3.14"

GET {{host}}/ja/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "ja/dev"

GET {{host}}/ja/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "ja/dev"

GET {{host}}/ko/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "ko/3"

GET {{host}}/ko/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "ko/3"

GET {{host}}/ko/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "ko/3.14"

GET {{host}}/ko/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "ko/3.14"

GET {{host}}/ko/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "ko/dev"

GET {{host}}/ko/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "ko/dev"

GET {{host}}/pl/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "pl/3"

GET {{host}}/pl/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "pl/3"

GET {{host}}/pl/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "pl/3.14"

GET {{host}}/pl/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "pl/3.14"

GET {{host}}/pl/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "pl/dev"

GET {{host}}/pl/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "pl/dev"

GET {{host}}/pt-br/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "pt-br/3"

GET {{host}}/pt-br/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "pt-br/3"

GET {{host}}/pt-br/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "pt-br/3.14"

GET {{host}}/pt-br/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "pt-br/3.14"

GET {{host}}/pt-br/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "pt-br/dev"

GET {{host}}/pt-br/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "pt-br/dev"

GET {{host}}/ro/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "ro/3"

GET {{host}}/ro/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "ro/3"

GET {{host}}/ro/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "ro/3.14"

GET {{host}}/ro/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "ro/3.14"

GET {{host}}/ro/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "ro/dev"

GET {{host}}/ro/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "ro/dev"

GET {{host}}/tr/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "tr/3"

GET {{host}}/tr/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "tr/3"

GET {{host}}/tr/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "tr/3.14"

GET {{host}}/tr/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "tr/3.14"

GET {{host}}/tr/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "tr/dev"

GET {{host}}/tr/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "tr/dev"

GET {{host}}/uk/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "uk/3"

GET {{host}}/uk/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "uk/3"

GET {{host}}/uk/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "uk/3.14"

GET {{host}}/uk/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "uk/3.14"

GET {{host}}/uk/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "uk/dev"

GET {{host}}/uk/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "uk/dev"

GET {{host}}/zh-cn/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-cn/3"

GET {{host}}/zh-cn/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-cn/3"

GET {{host}}/zh-cn/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-cn/3.14"

GET {{host}}/zh-cn/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-cn/3.14"

GET {{host}}/zh-cn/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-cn/dev"

GET {{host}}/zh-cn/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-cn/dev"

GET {{host}}/zh-tw/3/
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-tw/3"

GET {{host}}/zh-tw/3/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-tw/3"

GET {{host}}/zh-tw/3.14/
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-tw/3.14"

GET {{host}}/zh-tw/3.14/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-tw/3.14"

GET {{host}}/zh-tw/dev/
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-tw/dev"

GET {{host}}/zh-tw/dev/about.html
HTTP 404
[Asserts]
header "Surrogate-Key" == "zh-tw/dev"
