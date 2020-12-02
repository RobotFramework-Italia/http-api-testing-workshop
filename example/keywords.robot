*** Settings ***
Library   RequestsLibrary
Resource  config.robot

*** Keywords ***

Connect To Google
    Create Session  alias=${GOOGLE_ALIAS}  url=${GOOGLE_URL}  verify=${True}
