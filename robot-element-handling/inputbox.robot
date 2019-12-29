*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.nopcommerce.com/login
*** Test Cases ***
TestingInputBox
    Open browser    ${url}   ${browser}
    #maximazing window
    maximize browser window
    #checking the title
    title should be     Login - nopCommerce
    #setting element as a variable
    ${"username"}   set variable    css:input.username
    #checking whether element is visible
    element should be visible   ${"username"}
    #checking whether element is enabled
    element should be enabled   ${"username"}
    #typing text in inputbox
    input text  ${"username"}  mayank
    #clearing text in inputbox
    clear element text  ${"username"}
    #waiting for 5 seconds
    sleep   5
    #closing browser window
    close browser

*** Keywords ***

