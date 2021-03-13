*** Settings ***
Documentation    Basic http testing suite example
Library   RequestsLibrary

*** Test Cases ***
Test GET from Google
    [Tags]    example
    ${resp}=  GET  https://www.google.com
    Should Contain  ${resp.text}  Google
