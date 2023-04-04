*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    variable.robot
Resource    keyword.robot
Suite Setup   Open Browser   https://demoqa.com/    chrome
Suite Teardown    Close Browser
*** Test Cases ***
Access to Forms page
    Access Forms
    Input Form
    Click Element                    ${Submit}
    Verify Form
    Click Element                    ${Close}