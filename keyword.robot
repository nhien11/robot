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
    Input Text                     ${InputEmail}  john.smith@example.com
    Wait Until Element Is Visible  ${ClickGender}
    Execute JavaScript             window.scrollBy(0,3000) 
    Click Element                  ${ClickGender}
    Input Text                     ${InputMobile}  0704519427
    Wait Until Element Is Visible  ${Selectdob}
    Click Element                  ${Selectdob}
    Wait Until Element Is Visible  ${Wait Until Element Is Visible}
    Click Element                  ${Selectday}
    Input Text                     ${InputSubjects}  Hindi 
    Press Keys                     ${InputSubjects}  RETURN
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${ClickHobbies1}
    Click Element                  ${ClickHobbies2}
    Choose File                    ${Choosefile}   C:/Users/TRAN THI THUY NHIEN/OneDrive/Tài liệu/BT Vong Lap/BangCuuChuong
    Input Text                     ${InputAddress}  1234 Main Street
    Click Element                  ${SelectState}
    Click Element                  ${ClickState}
    Click Element                  ${SelectCity}
    Click Element                  ${ClickCity}
    
Verify Form
    ${actualResult}=    Get Text    //td[text()='Student Name']/following-sibling::td
    Should Be Equal    ${actualResult}    ${studentName}
    ${actualResult}=    Get Text    //td[text()='Student Email']/following-sibling::td
    Should Be Equal    ${actualResult}    ${studentEmail}
    ${actualResult}=    Get Text    //td[text()='Gender']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Gender}
    ${actualResult}=    Get Text    //td[text()='Mobile']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Mobile}
    ${actualResult}=    Get Text    //td[text()='Date of Birth']/following-sibling::td
    Should Be Equal    ${actualResult}    ${DateofBirth}
    ${actualResult}=    Get Text    //td[text()='Subjects']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Subject}
    ${actualResult}=    Get Text    //td[text()='Hobbies']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Hobbies}
    ${actualResult}=    Get Text    //td[text()='Picture']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Picture}
    ${actualResult}=    Get Text    //td[text()='Address']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Address}
    ${actualResult}=    Get Text    //td[text()='State and City']/following-sibling::td
    Should Be Equal    ${actualResult}    ${State&City}