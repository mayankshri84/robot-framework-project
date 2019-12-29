*** Settings ***
Library  SeleniumLibrary
Library  DataDriver     ../data-driven/test-data.xls    sheet_name=Sheet1

*** Variables ***
${browser}      chrome
${url}      https://www.nopcommerce.com/login

*** Test Cases ***
LoginTest with ${username}  ${password}
    Open browser    ${url}   ${browser}
    maximize browser window
    #set selenium speed  3 seconds
    set selenium timeout    10 seconds
    wait until page contains     Returning Customer
    loginToApplication  ${username}     ${password}
    close browser

*** Keywords ***
loginToApplication
    [Arguments]     ${username}     ${password}
    input text  css:input.username  ${username}
    input text  css:input.password  ${password}
    click element   css:input.btn.blue-button

