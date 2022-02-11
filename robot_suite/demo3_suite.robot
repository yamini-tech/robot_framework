*** Settings ***
Library    Collections

*** Comments ***
working with  local variable scalar, list, dic

* Test Cases *
TC1
    Set Local Variable    ${firstname}       Yamini
    ${lastname}     Set Variable    Saravanakumar
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List    orange    apple     banana
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}
    END

    Log List   ${fruits}

    Set Global Variable    ${otp}   1011

TC2
    Log To Console    ${otp}
#    Log List   ${fruits}
    &{dic}   Create Dictionary   firstname=Yamini    lastname=Saravanakumar   mobile=9872456104
    Log To Console    ${dic}[lastname]