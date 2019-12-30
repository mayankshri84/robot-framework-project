*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  http://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
HandlingAlert
    open browser    ${url}  ${browser}
    set selenium speed  1 seconds
    maximize browser window
    click element   css:button[onclick='myFunction()']
    handle alert    accept
    click element   css:button[onclick='myFunction()']
    handle alert    dismiss
    click element   css:button[onclick='myFunction()']
    handle alert    leave
    alert should be present     Press a button!
    close browser
*** Keywords ***
