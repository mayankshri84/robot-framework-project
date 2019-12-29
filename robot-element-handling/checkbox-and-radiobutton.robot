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
    #<input id="sex-0" checked="checked" name="sex" type="radio" value="Male">
    #for selecting radio button we need to pass name and the value parameter with "select radio button" keyword, in above html name is sex and value is Female
    select radio button     sex     Female
    select radio button     exp     5

    #<input id="tea1" name="BlackTea" type="checkbox" value="Black Tea">
    #for selecting checkbox we need to pass name of  the above given html with "select checkbox" keyword
    select checkbox     BlackTea
    select checkbox     oolongtea
    #for selecting checkbox we need to pass name of the element with "unselect checkbox" keyword
    unselect checkbox     BlackTea
    close browser

*** Keywords ***

