*** Settings ***
Documentation    Suite example
Library   RequestsLibrary
Resource  config.robot
Resource  keywords.robot

Suite Setup  Connect To Google

*** Test Cases ***
Test GET from Google
    [Tags]    example
    ${resp}=  GET On Session  alias=${GOOGLE_ALIAS}  url=/
    Should Contain  ${resp.text}  Google


Test GET on local httpbin with parameters
    Create Session  local_httpbin  http://localhost:5000
    ${resp}=  GET On Session  local_httpbin  anything  params=a=b


Test POST json body
    Create Session  local_httpbin  http://localhost:5000
    ${json_data}=  Create Dictionary   key=value     key2=value2
    ${resp}=  POST On Session  local_httpbin  anything  json=${json_data}
