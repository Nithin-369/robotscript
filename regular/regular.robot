*** Variables ***
${MY_VALUE} =  "abcd My name"

*** Test Cases ***
Test Regular Expression
     Validate Input String   ${MY_VALUE}



*** Keywords ***
Validate Input String
    [Arguments]   ${input}
    Should match Regexp   ${input}   "abcd.*"