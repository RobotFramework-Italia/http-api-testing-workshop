*** Settings ***
Library   RequestsLibrary
Resource  config.robot

*** Keywords ***

Connect To Google
    Create Session  alias=${GOOGLE_ALIAS}  url=${GOOGLE_URL}  verify=${True}

Connect To Local Httpbin
    Create Session  alias=${LOCAL_ALIAS}  url=${LOCAL_URL}

Connect To Json Placeholder
    Create Session  alias=${JSON_ALIAS}  url=${JSON_URL}  verify=${True}
