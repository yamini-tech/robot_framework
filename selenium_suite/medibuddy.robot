*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
    Open Browser    url=https://www.medibuddy.in/    browser=chrome    executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait   30s
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Click Element    link=Sign up

