*** Settings ***
Documentation    Process for the landing page
Library           SeleniumLibrary
Resource      ../../Data/Variables.robot

*** Keywords ***
Landing Page loaded
    wait until page contains    ${LandingPageTitle}

Select Test Link
    [Arguments]    ${TestLink}
    click element    ${TestLink}