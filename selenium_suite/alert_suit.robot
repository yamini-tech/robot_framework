*** Settings ***
Library     SeleniumLibrary

*** Comments ***
1. navigate to the url https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
2. Click on go
3. get the text from alert box
4. Click on ok in the alert box
5. close the browser

*** Test Cases ***
TC1
    Open Browser    browser=chrome     executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
    Click Element    xpath=//img[@alt='Go']
    ${alert_tex}     Handle Alert    action=ACCEPT     timeout=20s
    Log To Console    ${alert_tex}