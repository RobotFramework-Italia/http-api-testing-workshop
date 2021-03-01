*** Settings ***
Library   RequestsLibrary

Suite Setup  Create Session  httpbin  https://httpbin.org/

*** Test Cases ***
KO: Urls With Parameters (= symbol in url)
    GET On Session  httpbin  /anything?key=value

OK: Named Argument Url
        GET On Session  httpbin  url=/anything?key=value

OK: Dedicated Params
        GET On Session  httpbin  /anything  params=key=value



KO: String As Argument
    GET On Session  httpbin  /anything  headers='Custom-Header: value'

OK: Dictionary As Argument
    ${headers}=     Create Dictionary  Custom-Header=value
    GET On Session  httpbin  /anything  headers=${headers}

KO: Missing Spaces After Not Named Argument Url
    ${headers}=     Create Dictionary  Custom-Header=value
    GET On Session  httpbin  /anything headers=${headers}

KO: Missing Spaces After Headers
    ${headers}=     Create Dictionary  Custom-Header=value
    POST On Session  httpbin  url=/anything  headers=${headers} data=body
