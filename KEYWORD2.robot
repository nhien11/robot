*** Settings ***
Library    SeleniumLibrary                                                             
Resource    VARIABLE2.robot                                                                  
*** Keywords ***
Suite Setup
  Open Browser   https://demoqa.com/    chrome
  Access Book Store Application
Access Book Store Application
    Maximize Browser Window
    Wait Until Element Is Visible   ${Book}
    Execute JavaScript              window.scrollBy(0,3000)
    Click Element                   ${Book}
    sleep  3s
Register to Book Store
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${login}
    Click Element                  ${NewUser}
    Input Text                     ${FirstNameR}  tran
    Input Text                     ${LastNameR}  thi
    Input Text                     ${UsernameR}  ${userName}
    Input Password                 ${PasswordR}  ${Password}
    Wait Until Element Is Visible  ${clickiFrame}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${clickiFrame}
    sleep  10s
    Wait Until Element Is Visible  ${BtRegister}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${BtRegister}  
verify Register
    ${message}=  Handle Alert  action=ACCEPT
    Should Be Equal    ${message}      ${exAlertMessage}
login   
    Click Element      ${login}
    Input Text         ${UsernameL}    ${userName}
    Input Text         ${PasswordL}    ${Password}
    Click Button       ${BtLogin}
    Sleep  3s
verify login
    ${actualResult}=  Get Text         ${gtextUserName}
    Should Be Equal   ${actualResult}  ${userName}