
# Test top level redirect
GET http://localhost:10000/
HTTP 302
[Asserts]
header "Location" == "http://localhost/3/"
