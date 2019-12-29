*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.nopcommerce.com/login
*** Test Cases ***
LoginTest
    #Create Webdriver    Chrome kwargs="C:\Program Files\Python35\Scripts\chromedriver.exe"
    Open browser    ${url}   ${browser}
    maximize browser window
    #set selenium speed  3 seconds
    set selenium timeout    10 seconds
    wait until page contains     Returning Customer
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    input text  css:input.username  mayank
    input text  css:input.password  mayank
    click element   css:input.btn.blue-button