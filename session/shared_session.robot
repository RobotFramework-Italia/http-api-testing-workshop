*** Settings ***
Library  RequestsLibrary


*** Variables ***
${LOCAL_HTTP_URL}      http://localhost:5000
${BASIC_AUTH_URL}      /basic-auth/luca/right

${ANONYMOUS_SESSION}   anonymous_session
${USER_SESSION}        user_session


*** Test Cases ***

Test Right Credentials
    Create User Local Session  luca  right

Test Wrong Credentials
    Run Keyword And Expect Error  HTTPError: 401 Client Error:*  Create User Local Session  luca  wrong

Test Mixed Sessions
    Create User Local Session  luca  right
    POST On Session  ${USER_SESSION}  anything  data=authenticated

    Create Anonymous Local Session
    GET On Session  ${ANONYMOUS_SESSION}  /anything

    POST On Session  ${USER_SESSION}  anything  data=authenticated

Test Reusing A Session
    [Setup]  Create User Local Session  luca  right
    GET On Session  ${USER_SESSION}  anything

*** Keywords ***
Create Anonymous Local Session
    Create Session  ${ANONYMOUS_SESSION}  ${LOCAL_HTTP_URL}


Create User Local Session
    [Arguments]     ${username}  ${password}

    ${auth}=        Create List  ${username}  ${password}
    Create Session  ${USER_SESSION}  ${LOCAL_HTTP_URL}  auth=${auth}
    GET On Session  ${USER_SESSION}  ${BASIC_AUTH_URL}
