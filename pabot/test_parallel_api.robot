*** Settings ***
Documentation
...             pabot --processes 10 --pabotlib --testlevelsplit pabot/test_parallel_api.robot
Library         RequestsLibrary
Library         DataDriver  dialect=unix  file=input.csv

Test Template   Create and read content
Suite Setup     Setup Session


*** Variables ***
${LOCAL_HTTP_URL}      http://localhost:5000


*** Test Cases ***
Create and read content ${id} from local server


*** Keywords ***
Create and read content
    [Arguments]  ${id}
    POST On Session  local_httpbin  /anything/${id}
    Sleep  0.1
    GET On Session  local_httpbin  /anything/${id}


Setup Session
    Create Session  local_httpbin  ${LOCAL_HTTP_URL}
