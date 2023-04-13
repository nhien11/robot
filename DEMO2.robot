*** Settings ***
Library    SeleniumLibrary                     
Library    String
Resource      VARIABLE2.robot                           
Resource      KEYWORD2.robot
Suite Setup   Suite Setup                       
Suite Teardown    Close Browser
*** Test Cases ***
Register
  [tags]  ta1  tath
    Register to Book Store
    verify Register
    Sleep  3s
Login
  [tags]  ta1  tath
    login
    verify login
    Page Should Contain Element    ${BtLogout}