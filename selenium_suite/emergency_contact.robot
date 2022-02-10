*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

*** Test Cases ***
    Append To Environment Variable    path    ${EXECDIR}\\drivers
    Open Browser    url=https://opensource-demo.orangehrmlive.com/    browser=chrome
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    name=Submit
    Click Element    link=My Info
    Click Element    link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    saravanakumar
    Input Text    id=emgcontacts_relationship    Father
    Input Text    id=emgcontacts_homePhone    9823450876

    Click Element    id=btnSaveEContact
    Close Browser
