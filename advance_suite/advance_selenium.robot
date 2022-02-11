*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://google.com
    ${linkcount}    Get Element Count    tag=a
    Log To Console    {linkcount}


   @{elements}    Get WebElements    tag=a



   Comment    Write for loop to get 0 to 24 index and use it to get text

   FOR    ${i}    IN RANGE   1   ${linkcount}   1
        ${text}    Get Text    ${elements}[${i}]
        Log To Console    ${text}

    END



