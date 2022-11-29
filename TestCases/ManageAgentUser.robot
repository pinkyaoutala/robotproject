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
CreateNewAgentForm
    click element    //input[@name='firstName']
    input text    //input[@name='firstName']    olegSophie
    click element    //input[@name='email']
    input text    //input[@name='email']    olegsophie@mailinator.com
    click element    //*[@id="root"]/div/div[2]/div/div[2]/form/div[1]/div[1]/div[3]/div[2]/div
    mouse down       //div[text()='AdminAgent']
    click element    //div[text()='AdminAgent']
    click element    //input[@name='lastName']
    input text      //input[@name='lastName']       SophieOleg
    click element       //input[@name='phone']
    input text      //input[@name='phone']      9876567890
    click element    //input[@name='password']
    input password      //input[@name='password']       1234567890
    mouse over    //button[@type='submit']
    click button    //button[@type='submit']
*** Test Cases ***
ManageBooking View ticket OneWay
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed    3Seconds
    LoginFunction
    Mouse Over          //a[@id='dropdownMenuLink']
    click element       //a[@id='dropdownMenuLink']
    mouse over     //li[text()='Manage Agent Users']
    click element     //li[text()='Manage Agent Users']
    mouse over    //button[@class='w-100 rounded pb-2 pt-1']
    click button    //button[@class='w-100 rounded pb-2 pt-1']
    CreateNewAgentForm
