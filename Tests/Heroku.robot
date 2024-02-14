*** Settings ***
Documentation    This is a test suite for the Herokuapp
Library    SeleniumLibrary
Resource      ../Data/Variables.robot
Resource    ../resources/Common.robot
Resource    ../resources/Herokuapp.robot

Test Setup    Start Web Test
Test Teardown    End Web Test

#command to run the test
#robot -d results Tests\Heroku.robot


*** Test Cases ***
Verify Add Remove Elements Page
    [Documentation]     This test Adds a new item
    [Tags]              1001    Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${AddRemoveElements}
    Herokuapp.Verify Add Remove Elements Page
    Herokuapp.Add Elements  ${NumberOfElements}
    Herokuapp.Count Elements Added  ${NumberOfElements}
    Herokuapp.Delete Elements
    Herokuapp.Count Elements Added  0

Verify Broken Images
    [Documentation]     This test verifies the broken images
    [Tags]              1002    Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${BrokenImages}
    Herokuapp.Verify Broken Images Page
    Herokuapp.Validate Broken Images



Verify Basic Auth Page
    [Documentation]     This test Logs into the Basic Auth Page
    [Tags]              1003    Functional
    Herokuapp.Verify Landing Page
    Herokuapp.Select Test Link  ${BasicAuth}
    Herokuapp.Verify Basic Auth Page
    Herokuapp.Basic Auth  ${BAUsername}  ${BAPassword}
    Herokuapp.Verify Basic Auth Success
    Herokuapp.Basic Auth  ${BAUsernameBAD}  ${BAPasswordBAD}
    Herokuapp.Verify Basic Auth Success