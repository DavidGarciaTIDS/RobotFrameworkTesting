*** Settings ***
Documentation    Process for the landing page
Library           SeleniumLibrary
Library           String
Resource      ../../Data/Variables.robot

*** Variables ***
${curURL}
${login}

*** Keywords ***
BasicAuth Page loaded
    wait until page contains    ${LandingPageTitle}

Login to the BasicAuth
    [Arguments]    ${Username}    ${Password}
    handle alert    DISMISS
    ${curURL}=   get location
    ${curURL}=   fetch from right    ${curURL}    //
    #log     ${curURL}
    ${login}=    Set Variable   ${Username}:${Password}@${curURL}
    #log     ${login}
    go to   https://${login}

#Did not work with the code below
Fill Username
    [Arguments]    ${Username}
    input text into alert    ${Username}    action=LEAVE

Fill Password
    [Arguments]    ${Password}
    input text into alert    ${Password}
#Did not work with the code above