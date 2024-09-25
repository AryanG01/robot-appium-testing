*** Settings ***
Library           OperatingSystem

*** Keywords ***
Log My Username
    Log    ${DICTIONARY}[username]

Log My Password
    Log    ${DICTIONARY}[password]

Log My Username And Password
    Log    ${DICTIONARY}[username]
    Log    ${DICTIONARY}[password]

Log My Username And Password 2
    Log My Username
    Log My Password

Log My Specific Username
    [Arguments]    ${username}
    Log        ${username}

Log My Specific Password
    [Arguments]    ${password}
    Log            ${password}

Log My Specific Username And Password
    [Arguments]   ${username}    ${password}
    Log    ${username}
    Log    ${password}


*** Variables ***
${MY-VARIABLE}    This is my test variable
${MY-VARIABLE2}    This is my second test variable

${GOOGLE-SEARCH-FIELD}    //input[@title='Search2']

@{LIST}    test1    test2    test3    test4

&{DICTIONARY}    username=testuser    password=demo
&{DICTIONARY2}    username=testuser2    password=demo2