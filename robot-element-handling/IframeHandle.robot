*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://selenium.dev/selenium/docs/api/java/
${browser}  chrome

*** Test Cases ***
HandlingIframe
    open browser    ${url}  ${browser}
    set selenium speed  1 seconds
    maximize browser window
    select frame    packageFrame
    click link  AcceptedW3CCapabilityKeys
    unselect frame
    close browser
*** Keywords ***
