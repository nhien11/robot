*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    variable.robot
Resource    keyword.robot
Suite Setup   Suite Setup 
Suite Teardown    Close Browser
*** Test Cases ***
Access to Forms page
    [tags]  ta3  tath
    Access Forms
    Input Form
    Click Element                    ${Submit}
    Verify Form
    Click Element                    ${Close}
Register
  [tags]  ta1  tath
    Access Book Store Application
    Register to Book Store
    verify Register
    Sleep  3s
Login
  [tags]  ta1  tath
    login
    verify login
    Page Should Contain Element    ${BtLogout}
  