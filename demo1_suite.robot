*** Settings ***
Library  DateTime
Library	DateTime

*** Test Cases ***
TC1 Print Name
      Log To Console  hello,everyone
      Log To Console  Yamini Saravanakumar

TC2 Print Date
      ${date}     Get Current Date
      Log To Console  ${name}

TC3 Store Data
      Set Local Variable     ${name}     yamini
      Log To Console  ${name}
      Log  hello,${name}

      ${title}	Set Variable  robotframeworksession
      Log To Console  ${title}

#store two number and add it
TC4 Add Number
      Set Local Variable    ${num1} 10
      Set Local Variable    ${num2}	10
      Set Local Variable    ${sum}	${${num1}+${num2}}
      Log To Console    ${sum}

#Area of a circle
      Set Local Variable    ${radius} 5
      Set Local Variable    ${pi} 3.14
      ${area}   Evaluate    ${pi} * ${radius} * ${radius}
      Log To Console    ${area}
