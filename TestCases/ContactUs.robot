*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}      https://b2b.trackontravellers.com/login
*** Keywords ***
LoginFunction
  click element         xpath://input[@name='email']
  sleep     2
  input text          name:email        apr01@mailinator.com
  sleep    2
  click element        xpath://input[@name='password']
  sleep    2
  input text          name:password       123456
  sleep    2
  click button        xpath://button[@class='butn']
*** Test Cases ***
ContactUs Form
    set selenium speed    2seconds
    open browser    ${url}      ${browser}
    maximize browser window
    sleep    1
    LoginFunction
    sleep      1
    Run Keyword And Ignore Error    Scroll Element Into View   xpath://a[normalize-space()='Contact Us']
    sleep    2
    mouse over      xpath://a[normalize-space()='Contact Us']
    sleep    2
    click element   xpath://a[normalize-space()='Contact Us']
    sleep    2
    click element    //input[@name='firstName']
    sleep    1
    input text    //input[@name='firstName']    Priyanka
    sleep    1
    click element   //input[@name='lastName']
    sleep    1
    input text     //input[@name='lastName']    AR
    sleep    1
    click element    //input[@name='email']
    sleep    1
    input text    //input[@name='email']        sophie@mailinator.com
    sleep    1
    click element    //input[@name='phone']
    sleep    1
    input text    //input[@name='phone']     9078907890
    sleep    1
    click element    //div[@class=' css-tlfecz-indicatorContainer']
    sleep    1
    mouse over    //div[text()='Holiday']
    sleep    1
    click element    //div[text()='Holiday']
    sleep    1
    click element    //*[@id="root"]/div/div[2]/div/div/form/div/div[1]/div[1]/div[2]/div/div[1]/div[2]
    sleep    1
    mouse over    //div[text()='Agent']
    sleep    1
    click element    //div[text()='Agent']
    sleep    1
    click element    //input[@name='title']
    sleep    1
    input text    //input[@name='title']        I am Testing using Robot Framework
    sleep    1
    click element    //textarea[@name='description']
    sleep    1
    input text    //textarea[@name='description']       This is the Description written using Automation.











