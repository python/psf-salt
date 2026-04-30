GET {{host}}/3.14/not-a-file
HTTP 404
[Asserts]
body contains "3.14 404"

GET {{host}}/3/not-a-file.html
HTTP 404
[Asserts]
body contains "3 404"

GET {{host}}/3.14/whatsnew/3.1t4
HTTP 404
[Asserts]
body contains "3.14 404"

GET {{host}}/3.14/library/not-a-file
HTTP 404
[Asserts]
body contains "3.14 404"

GET {{host}}/3.14/library/notafile.html
HTTP 404
[Asserts]
body contains "3.14 404"

GET {{host}}/3/whatsnew/not-a-file
HTTP 404
[Asserts]
body contains "3 404"

GET {{host}}/fr/3.14/not-a-file
HTTP 404
[Asserts]
body contains "fr/3.14 404"

GET {{host}}/fr/3.14/not-a-dir/not-a-file
HTTP 404
[Asserts]
body contains "fr/3.14 404"

GET {{host}}/pl/3/not-a-dir/not-a-file.html
HTTP 404
[Asserts]
body contains "pl/3 404"

GET {{host}}/pl/3/not-a-dir/not-a-dir/not-a-file.html
HTTP 404
[Asserts]
body contains "pl/3 404"

GET {{host}}/pl/3/library/notafile.html
HTTP 404
[Asserts]
body contains "pl/3 404"