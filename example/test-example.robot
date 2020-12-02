*** Settings ***
Documentation    Suite example
Library   RequestsLibrary
Resource  config.robot
Resource  keywords.robot

Suite Setup  Connect To Google

*** Test Cases ***
Test GET from Google
    [Tags]    example
    ${resp}=  GET On Session  ${GOOGLE_ALIAS}  /
    Should Contain  ${resp.text}  Google
