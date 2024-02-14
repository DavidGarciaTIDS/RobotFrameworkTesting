*** Settings ***
Resource    ../Resources/PO/AddRemove.robot
Resource    ../Resources/PO/Landing.robot
Resource    ../Resources/PO/BasicAuth.robot
Resource    ../Resources/PO/BrokenImages.robot

*** Keywords ***

Verify Landing Page
    Landing.Landing Page loaded

Select Test Link
    [Arguments]    ${TestLink}
    Landing.Select Test Link    ${TestLink}

Verify Add Remove Elements Page
    AddRemove.AddRemove Page loaded

Add Elements
    [Arguments]    ${times}
    AddRemove.Add Elements  ${times}

Delete Elements
    AddRemove.Delete Elements

Count Elements Added
    [Arguments]    ${Expected}
    AddRemove.Count Elements    ${Expected}

Verify Basic Auth Page
    log     verify

Basic Auth
    [Arguments]    ${username}    ${password}
    sleep   2s
    BasicAuth.Login to the BasicAuth    ${username}    ${password}
    sleep   2s

Verify Basic Auth Success
    log     verify

Verify Broken Images Page
    BrokenImages.BrokenImages Page loaded

Validate Broken Images
    BrokenImages.Validate Broken Images