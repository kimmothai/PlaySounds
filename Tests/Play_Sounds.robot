*** Settings ***
Variables  ../Resources/variables.py
Resource  ../Resources/CommonWebApp.robot
Resource  ../Resources/SoundBoardApp.robot
Test Setup  Run keywords  Begin Web Test
Test Teardown  End Web Test

*** Variables ***
# robot -d Results -i Default Tests\Play_Sounds.robot

*** Test Cases ***
Should play sound
    [Tags]  Smoke
    SoundBoardApp.Play sound

Should play all sounds
    [Tags]  Default
    SoundBoardApp.Play All Sounds