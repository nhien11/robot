*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ri.robot
Resource    re.robot
Suite Setup   Suite Setup
Suite Teardown    Close Browser
*** Test Cases ***
Register
    Register to Book Store
    verify Register
    Sleep  3s
Login
    login
    verify login
    Page Should Contain Element    ${BtLogout}