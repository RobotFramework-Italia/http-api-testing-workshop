*** Settings ***
Library  RequestsLibrary


*** Test Cases ***
Test Json Response
    Create Session    jsonplaceholder   https://jsonplaceholder.typicode.com  verify=True
    ${resp}=          GET On Session    jsonplaceholder     /posts/1
    Should Contain    ${resp.json()['title']}  optio


