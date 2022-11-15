*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***

*** Test Cases ***
testLogin

    Open Browser   https://agent-qa.trackontravellers.com/login     chrome
    title should be     Track on traveller
    p
    close browser
