*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

*** Test Cases ***

TC1 Register Form
    Open Browser    url=https:///nasscom.in/about-us/career    browser=chrome     executable_path=${EXECDIR}/drivers/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    value
