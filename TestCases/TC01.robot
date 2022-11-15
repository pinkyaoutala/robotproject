*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
LoginTest

    open browser    https://b2b.trackontravellers.com/login    Chrome
    sleep   10
    input text    name : Email           apr01@mailinator.com
    sleep    10
    input text    name : password        123456
    sleep    10
    click element    xpath://button[@class='butn']
    Close Browser