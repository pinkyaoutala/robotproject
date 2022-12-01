*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}      chrome

*** Keywords ***


*** Test Cases ***
#HandleAlertTestCase
    #open browser    ${url}      ${browser}
    ##click button    //button[text()='Click Me']
    #handle alert    accept --> works like "Clicking Accept button on the Pop-up window
    #handle alert    dismiss --> Works like"Clicking Cancel button on the Pop-up window
    #handle alert    leave --> Leaves the pop up open untill the script executes.

    #Verify the Test in Pop-up window
    #alert should not be present    Press a button!

    #when wanted to Rightclick element this command is used " open context menu "
    #double click element

HandleFramesTestCase
    open browser    https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html     ${browser}
    maximize browser window
    select frame     packageListFrame
    click link       org.openqa.selenium
    unselect frame
    select frame    packageFrame
    click link      Capabilities
    unselect frame
    select frame    classFrame
    click link    Tree
    unselect frame


    go to  ${url}
    double click element    //button[text()='Copy Text']

