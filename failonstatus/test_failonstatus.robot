*** Settings ***
Library  RequestsLibrary
Library  Collections


*** Test Cases ***

Example Of Fail Hard To Debug
    Create Session     jsonplaceholder   https://jsonplaceholder.typicode.com  verify=True

    ${resp}=           Get Request   jsonplaceholder    /posts/1/typo
    ${article}=        Set Variable  ${resp.json()}
    ${resp}=           Post Request  jsonplaceholder    /posts    json=${article}

    Status Should Be   Created  ${resp}
    ${title}=          Get From Dictionary  ${article}  title
    Should Contain     ${title}  optio


Example Of Multiple Steps And Hidden Fail
    Create Session     jsonplaceholder   https://jsonplaceholder.typicode.com  verify=True

    ${resp}=           Get Request   jsonplaceholder    /posts/1/error
    ${article}=        Set Variable  ${resp.json()}
    Set To Dictionary  ${article}  body="Body of the article"

    ${resp}=           Post Request  jsonplaceholder    /posts    json=${article}
    Status Should Be   Created  ${resp}
