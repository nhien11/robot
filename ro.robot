*** Settings ***
Library    SeleniumLibrary
Library    String
Suite Setup   Open Browser   https://demoqa.com/    chrome
Suite Teardown    Close Browser
*** Variables ***
${BROWSER}        Chrome
${URL}            https://demoqa.com/register
${FIRST_NAME}     John
${LAST_NAME}      Smith
${USERNAME}       johnsmith
${PASSWORD}        Thuynhien1@
${exAlertMessage}    User Register Successfully.

*** Test Cases ***
 Login
    Maximize Browser Window
    Wait Until Element Is Visible  //div[@class='card-body']/h5[text()='Book Store Application']
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  //div[@class='card-body']/h5[text()='Book Store Application']
    sleep  3s
    Click Element                 xpath=//button[contains(text(), 'Login') and @class='btn btn-primary']
   Click Element   xpath=//button[text()='New User']
   sleep  3s
    Input Text     xpath=//input[@id='firstname']    ${FIRST_NAME}
    Input Text     xpath=//input[@id='lastname']    ${LAST_NAME}
    Input Text     xpath=//input[@id='userName']      ${USERNAME} 
    Input Text     xpath=//input[@id='password']       ${PASSWORD}
    Wait Until Element Is Visible     xpath=//iframe[@title='reCAPTCHA']
    Execute JavaScript               window.scrollBy(0,3000)
    Click Element    xpath=//iframe[@title='reCAPTCHA']
    Sleep    15s
    Wait Until Element Is Visible    xpath=//button[@id='register']
    Execute JavaScript               window.scrollBy(0,3000)
    Click Element                    xpath=//button[@id='register']
   # Page Should Contain    User Register Successfully
   Sleep    1s
   ${message}=  Handle Alert  action=ACCEPT
   Should Be Equal    ${message}    ${exAlertMessage}