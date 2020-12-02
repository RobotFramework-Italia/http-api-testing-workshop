*** Settings ***
Library  RequestsLibrary


*** Variables ***
${LOCAL_HTTP_URL}      http://localhost:5000
${BASIC_AUTH_URL}      /basic-auth/luca/right

${ANONYMOUS_SESSION}   anonymous_session
${USER_SESSION}        user_session


*** Test Cases ***



*** Keywords ***
Create Anonymous Local Session
    Create Session  ${ANONYMOUS_SESSION}  ${LOCAL_HTTP_URL}


