*** Settings ***
Library           SeleniumLibrary
Resource    ../../Data/Variables.robot

*** Keywords ***
AddRemove Page loaded
    wait until page contains    ${AddRemovePage}

Add Elements
    [Arguments]    ${times}
    FOR   ${i}    IN RANGE   ${times}
        click element    ${AddElementButton}
    END

Delete Elements
    ${times}=   Count Elements
    FOR   ${i}    IN RANGE   ${times}
        click element    ${DeleteElements}
    END

Count Elements
    [Arguments]    ${Expected}=${NumberOfElements}
    ${count}=    get element count    ${DeleteElements}
    IF  ${count} == ${Expected}
        log     ${count} elements
    ELSE
        FAIL     Expected ${Expected} elements but got ${count} elements
    END
    RETURN    ${count}
