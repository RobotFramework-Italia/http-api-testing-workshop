*** Settings ***

*** Test Cases ***
Robot Framework is working
    Log To Console  "Yeah!"

Requests Library is installed
    Import Library  RequestsLibrary

Requests Library works
    Import Library  RequestsLibrary
    Create Session  session  https://httpbin.org/  verify=True
    GET On Session  session  anything
