*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Keywords ***
Play sound
    Click Element  css=${PLAY}
    Sleep  3s

Play All Sounds
    @{elements} =  Get WebElements  css=${PLAY}
    FOR  ${element}  IN  @{elements}
        Click Element  ${element}
        Wait Until Element Is Not Visible  css=${PAUSE}  timeout=10s  error=None
    END