*** Settings ***
Documentation    Process for the landing page
Library           SeleniumLibrary
Library           RequestsLibrary
Resource      ../../Data/Variables.robot

*** Variables ***
${count}=    0
*** Keywords ***
BrokenImages Page loaded
    wait until page contains    ${BrokenImagesTitle}

Validate Broken Images
    @{images}=  Get WebElements    ${BrokenImageContainer}//img
    FOR    ${image}    IN    @{images}
        ${imageSrc}=    Get Element Attribute    ${image}    src
        ${resp}=    run keyword and continue on failure    HEAD    url=${imageSrc}    expected_status=404
        log   ${resp}
        IF   ${resp.status_code} != 200
                ${count}=    Evaluate    ${count}+1
        ELSE
                log    ${imageSrc}    is not broken only ${count} broken images found
        END
    END
