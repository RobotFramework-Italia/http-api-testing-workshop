*** Settings ***
Library  RequestsLibrary

Suite Setup  Setup Session

*** Variables ***
${LOOP_NUMBER}=  10

*** Test Cases ***
Loop test
    FOR  ${i}  IN RANGE  1  ${LOOP_NUMBER}
        Get Data
    END

*** Keywords ***
Get Data
    GET On Session  stress_session  anything

Setup Session
    Create Session  stress_session  http://localhost:5000
