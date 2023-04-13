*** Settings ***
Library    SeleniumLibrary
Resource    ri.robot
*** Keywords ***
Suite Setup
  Open Browser   https://demoqa.com/    chrome
  Access Book Store Application
Access Book Store Application
    Maximize Browser Window
    Wait Until Element Is Visible  ${BookStoreApplication}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${BookStoreApplication}
    sleep  3s
Register to Book Store
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${login}
    Click Element                  ${NewUser}
    Input Text                     ${inputFirstNameR}  tran
    Input Text                     ${inputLastNameR}  thi
    Input Text                     ${inputUsernameR}  ${userName}
    Input Password                 ${inputPasswordR}  ${Password}
    sleep  2s
    Wait Until Element Is Visible  ${clickiFrame}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${clickiFrame}
    sleep  10s
    Wait Until Element Is Visible  ${BtRegister}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${BtRegister}  
verify Register
    ${message}=  Handle Alert  action=ACCEPT
    Should Be Equal    ${message}    ${exAlertMessage}
login   
    Click Element                  ${login}
    Input Text      ${inputUsernameL}    ${userName}
    Input Text       ${inputPasswordL}    ${Password}
    Click Button     ${BtLogin}
    Sleep  3s
verify login
    ${actualResult}=  Get Text         ${gtextUserName}
    Should Be Equal   ${actualResult}  ${userName}