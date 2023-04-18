*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    variable.robot
Resource    keyword.robot
Suite Setup   Suite Setup 
Suite Teardown    Close Browser
*** Test Cases ***
Access to Forms page
    [tags]  Run1  Regression
    Access Forms
    Input Form
    Verify Form
    
Register
  [tags]   Run2   Regression
    Access Book Store Application
    Register to Book Store
    verify Register
    Sleep  3s
Login
  [tags]   Run3  Regression
    login
    verify login
  