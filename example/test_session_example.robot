*** Settings ***
Documentation    Http session testing suite example
Library   RequestsLibrary
Resource  config.robot
Resource  keywords.robot

Suite Setup  Connect To Google

*** Test Cases ***
Test GET On Session from Google
    [Tags]    google
    ${resp}=  GET On Session  alias=${GOOGLE_ALIAS}  url=/
    Should Contain  ${resp.text}  Google


Test GET on local httpbin with parameters
    [Tags]    local-httpbin
    Connect To Local Httpbin
    ${resp}=  GET On Session  ${LOCAL_ALIAS}  anything  params=a=b


Test POST json body
    [Tags]    local-httpbin
    Connect To Local Httpbin
    ${json_data}=  Create Dictionary   key=value     key2=value2
    ${resp}=  POST On Session  ${LOCAL_ALIAS}  anything  json=${json_data}
