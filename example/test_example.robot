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
