*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}      https://b2b.trackontravellers.com/login
*** Keywords ***
LoginFunction
  click element         xpath://input[@name='email']
  sleep     1
  input text          name:email        apr01@mailinator.com
  sleep    1
  click element        xpath://input[@name='password']
  sleep    1
  input text          name:password       123456
  sleep    1
  click button        xpath://button[@class='butn']
*** Test Cases ***
ManageBooking View ticket OneWay
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    3Seconds
    LoginFunction
    Mouse Over          //a[@id='dropdownMenuLink']
    click element       //a[@id='dropdownMenuLink']
    mouse over    //li[text()='Manage Booking']
    click element    //li[text()='Manage Booking']
    ##mouse over    (//button[@type='button m-3'])
    #click button    (//button[@type='button m-3'])
    mouse over    //button[@class='btn-success rounded p-2']
    click button    //button[@class='btn-success rounded p-2']

