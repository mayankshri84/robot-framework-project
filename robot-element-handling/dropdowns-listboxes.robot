*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html
*** Test Cases ***
TestingInputBox
    Open browser    ${url}   ${browser}
    #maximazing window
    maximize browser window
    #for slowing selenium execution of each step
    set selenium timeout    2 seconds
    select from list by label   continents  South America
    select from list by index   continents  6
    sleep   5
    select from list by label   selenium_commands   Navigation Commands
    select from list by label   selenium_commands   Wait Commands
    sleep   5
    unselect from list by label   selenium_commands   Navigation Commands
    sleep   5
    close browser

*** Keywords ***

