*** Settings ***
Library  RequestsLibrary


*** Test Cases ***
Test Json Response
    Create Session    jsonplaceholder   https://jsonplaceholder.typicode.com  verify=True
    ${resp}=          GET On Session    jsonplaceholder     /posts/1
    Should Contain    ${resp.json()['title']}  optio

Test Working
    Create Session     local_httpbin   http://localhost:5000
    ${resp}=  Complicated Request  /status/200
    Request Should Be Successful  ${resp}

Test Unauthorized
    Create Session     local_httpbin   http://localhost:5000
    ${resp}=  Complicated Request  /status/401
    Status Should Be  unauthorized  ${resp}


*** Keywords ***

Complicated Request
    [Arguments]  ${url}
    ${resp}=  GET On Session     local_httpbin   ${url}  expected_status=Any
    [Return]  ${resp}
