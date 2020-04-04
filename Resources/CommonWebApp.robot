*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    Open Browser  ${URL}  ${BROWSER}
    Wait Until Element Is Visible  css=${PLAY}


End Web Test
    Close All Browsers  