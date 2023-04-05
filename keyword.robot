*** Settings ***
Library    SeleniumLibrary
Resource    Variable.robot
*** Keywords ***
Access Forms
    Maximize Browser Window
    Wait Until Element Is Visible  ${Form}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${Form}
Input Form
    Click Element                  ${PracticeForm}
    Input Text                     ${InputFirstName}   John
    Input Text                     ${InputLastName}  Smith
    Input Text                     ${InputEmail}  ${StudentEmail}
    Wait Until Element Is Visible  ${ClickGender}
    Execute JavaScript             window.scrollBy(0,3000) 
    Click Element                  ${ClickGender}
    Input Text                     ${InputMobile}  ${Mobile}
    Wait Until Element Is Visible  ${Selectdob}
    Click Element                  ${Selectdob}
    Wait Until Element Is Visible  ${Wait Until Element Is Visible}
    Click Element                  ${selectmonth}
    Press Keys                     ${selectmonth}  October
    Click Element                  ${selectyear}
    Press Keys                     ${selectyear}  2001
    Click Element                  ${Selectday}
    Input Text                     ${InputSubjects}  ${Subject} 
    Press Keys                     ${InputSubjects}  RETURN
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${ClickHobbies1}
    Click Element                  ${ClickHobbies2}
    Choose File                    ${Choosefile}   C:/Users/TRAN THI THUY NHIEN/OneDrive/Tài liệu/BT Vong Lap/BangCuuChuong
    Input Text                     ${InputAddress}  ${Address}
    Click Element                  ${SelectState}
    Click Element                  ${ClickState}
    Click Element                  ${SelectCity}
    Click Element                  ${ClickCity}
    
Verify Form
    ${actualResult}=    Get Text    ${GtextName}
    Should Be Equal    ${actualResult}    ${studentName}
    ${actualResult}=    Get Text    ${GtextEmail} 
    Should Be Equal    ${actualResult}    ${studentEmail}
    ${actualResult}=    Get Text    ${GtextGender}
    Should Be Equal    ${actualResult}    ${Gender}
    ${actualResult}=    Get Text    ${GtextMobile} 
    Should Be Equal    ${actualResult}    ${Mobile}
    ${actualResult}=    Get Text    ${GtextDoB}
    Should Be Equal    ${actualResult}    ${DateofBirth}
    ${actualResult}=    Get Text    ${GtextSubjects}
    Should Be Equal    ${actualResult}    ${Subject}
    ${actualResult}=    Get Text    ${GtextHobbies}
    Should Be Equal    ${actualResult}    ${Hobbies}
    ${actualResult}=    Get Text    ${GtextPicture}
    Should Be Equal    ${actualResult}    ${Picture}
    ${actualResult}=    Get Text   ${GtextAddress}
    Should Be Equal    ${actualResult}    ${Address}
    ${actualResult}=    Get Text    ${GtextSaC}
    Should Be Equal    ${actualResult}    ${State&City}