*** Comments ***
1.Navigate https://nasscom.in/nasscom-membership
2. click radio button Institutional Members
3. Check education and training
4. Check telecom Services
5. Click calculate Membership fee
6. get the alert text and print in the console
7. Handle the alert box

*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
TC1
     Open Browser    browser=chrome     executable_path=${EXECDIR}${/}drivers${/}chromedriver
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://nasscom.in/nasscom-membership
     Select Radio Button    edit-field-membership-type[und]   1203
     Select Checkbox    id=edit-field-business-focus-inst-und-966
     Select Checkbox    id=edit-field-business-focus-inst-und-968
     Click Element    link=Calculate Membership Fee
     ${text}     Handle Alert     action=LEAVE
     Alert Should Be Present    Please enter amount in digit and greater than zero.     action=ACCEPT
     Choose File    id=edit-field-memorandum-article-of-asso-und-0-upload    file_path=C:\\Users\\yamini =-
      Sleep    5s
     ${alert_text}    Handle Alert    action=ACCEPT    timeout=20s
     Log To Console    ${alert_text}
     Close Browser