*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}      https://agent-qa.trackontravellers.com/login
${Continue Booking}     xpath://button[@class='btn-lg w-100']
${Continue Payment}     xpath://button[@type='submit']
*** Keywords ***
LoginFunction
  click element         xpath://input[@name='email']
  sleep     2
  input text          name:email        sophie@mailinator.com
  sleep    2
  click element        xpath://input[@name='password']
  sleep    2
  input text          name:password       123456
  sleep    2
  click button        xpath://button[@class='butn']
ChoseDestinationAndArrivalPlaces
  click element    xpath:/html/body/div/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div/div/form/div[1]/div[1]/div/div/div/div/div/div/span[1]/input
  sleep    3
  input text    xpath:/html/body/div/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div/div/form/div[1]/div[1]/div/div/div/div/div/div/span[1]/input       HYD
  sleep    3
  click element    xpath://p[text()='Rajiv Gandhi Intl']
  sleep    2
  Click Element    xpath:/html/body/div/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div/div/form/div[1]/div[3]/div/div/div/div/div/div/span[1]/input
  sleep    2
  input text    xpath:/html/body/div/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div/div/form/div[1]/div[3]/div/div/div/div/div/div/span[1]/input       PNQ
  sleep    2
  click element    xpath://p[text()='Lohegaon Arpt']
  sleep    2
  click element    xpath://button[@type='submit']
  sleep   2
Step01Process
  run keyword and ignore error    Scroll Element Into View      ${Continue Booking}
  sleep    2
  click button    ${Continue Booking}
Step02GuestDetails
    click element    xpath://div[@id='root']/div/div[2]/div/div[2]/div/div/div[2]/div[2]/form/div/div[2]/div/div/div/div/div/div/div
  sleep    2
  click element     xpath:(.//*[normalize-space(text()) and normalize-space(.)='Mr.'])[2]/following::div[2]
  sleep    2
  click element    xpath://input[@id='items_0_firstName']
  sleep    2
  input text    xpath://input[@id='items_0_firstName']      Priya
  click element    xpath://input[@id='items_0_lastName']
  input text    xpath://input[@id='items_0_lastName']       Test
  click element    xpath://input[@id='email']
  input text    xpath://input[@id='email']        sophie@mailinator.com
  click element    xpath://input[@id='mobile']
  input text    xpath://input[@id='mobile']     9078907890
  Run Keyword And Ignore Error    Scroll Element Into View    ${Continue Payment}
  sleep    10
  click button    ${Continue Payment}

*** Test Cases ***
LoginTest
  open browser         ${url}       ${browser}
  maximize browser window
  sleep    3
  LoginFunction
  sleep     2
  click element    xpath:/html/body/div/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div/span/span[2]/input
  Sleep    2
  ChoseDestinationAndArrivalPlaces
  sleep     2
  click element    xpath:/html/body/div[1]/div/div[2]/div/div/div[1]/div[1]/div[2]/div/div/div/form/div[2]/div[2]/div/div/div/div/div
  sleep    2
  click element    xpath://td[@title='2022-11-26']
  sleep    2
  click element    xpath://button[@type='submit']
  sleep   15
  click element    xpath:(//input[@name='select'])[1]
  Sleep    2
  click element    xpath:(//input[@id='card2'])
  sleep    2
  click button    xpath://button[text()='Book Now']
  Sleep    20
  Step01Process




