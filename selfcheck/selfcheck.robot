*** Settings ***

*** Test Cases ***
Robot Framework is working
    Log To Console  "Yeah!"

Requests Library is installed
    Import Library  RequestsLibrary

Requests Library works
    Import Library  RequestsLibrary
    Create Session  httpbin  https://httpbin.org/  verify=True
    GET On Session  httpbin  anything

Local HTTP server is reachable
    Import Library  RequestsLibrary
    Create Session  local_httpbin  http://localhost:5000
    GET On Session  local_httpbin  anything
