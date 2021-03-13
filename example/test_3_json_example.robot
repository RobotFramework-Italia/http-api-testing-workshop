*** Settings ***
Documentation    Http json testing suite example
Library   RequestsLibrary
Resource  config.robot
Resource  keywords.robot


*** Test Cases ***

Test PUT json body
    Connect To Json Placeholder
    ${json_data}=  Create Dictionary  id=1
    ...                               userId=luca
    ...                               title=updated
    ...                               body=new body
    ${resp}=  PUT On Session  ${JSON_ALIAS}  posts/1  json=${json_data}

Test PATCH json body
    Connect To Json Placeholder
    ${json_data}=  Create Dictionary  title=updated
    ${resp}=  PATCH On Session  ${JSON_ALIAS}  posts/2  json=${json_data}

Test DELETE resource
    Connect To Json Placeholder
    ${resp}=  DELETE On Session  ${JSON_ALIAS}  posts/3

Test filtering resources
    Connect To Json Placeholder
    ${resp}=  GET On Session  ${JSON_ALIAS}  posts  params=userId=1
