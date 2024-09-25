*** Settings ***
Documentation     This is my First Test Case
Library           OperatingSystem
Resource          ../Resources/resources.robot

*** Test Cases ***
TEST
    [Tags]    demo
    Log       ${MY-VARIABLE}
    Log       ${MY-VARIABLE2}
    Log       ${GOOGLE-SEARCH-FIELD}
    Log       ${LIST}
    Log       ${LIST}[-1]
    Log       ${LIST}[0]
    Log       ${LIST}[1]
    Log       ${LIST}[2]
    Log       ${LIST}[3]
    # Log       ${LIST}[4]
    Log       ${DICTIONARY}
    Log       ${DICTIONARY}[username]
    Log       ${DICTIONARY}[password]
    Log My Username
    Log My Password
    Log My Username And Password
    Log My Username And Password 2
    Log My Specific Username And Password    ${DICTIONARY}[username]    ${DICTIONARY}[password]