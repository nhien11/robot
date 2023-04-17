*** Settings ***
Library    SeleniumLibrary
Resource    variable.robot
*** Keywords ***
Suite Setup
  Open Browser   https://demoqa.com/    chrome
  Maximize Browser Window
Access Forms
    Wait Until Element Is Visible  ${Form}
    Execute JavaScript             ${JavaScript}
    Click Element                  ${Form}
Input Form
    Click Element                  ${PracticeForm}
    Input Text                     ${InputFirstName}    ${FName} 
    Input Text                     ${InputLastName}     ${LName}
    Input Text                     ${InputEmail}  ${StudentEmail}
    Wait Until Element Is Visible  ${ClickGender}
    Execute JavaScript             ${JavaScript} 
    Click Element                  ${ClickGender}
    Input Text                     ${InputMobile}  ${Mobile}
    Wait Until Element Is Visible  ${Selectdob}
    Click Element                  ${Selectdob}
    Wait Until Element Is Visible  ${WaitUntil}
    Click Element                  ${Selectmonth}
    Press Keys                     ${Selectmonth}   ${Semonth}
    Click Element                  ${Selectyear}
    Press Keys                     ${Selectyear}     ${Syear} 
    Click Element                  ${Selectday}
    Input Text                     ${InputSubjects}  ${Subject} 
    Press Keys                     ${InputSubjects}  RETURN
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${ClickHobbies1}
    Click Element                  ${ClickHobbies2}
    Choose File                    ${Choosefile}   ${Cfile} 
    Input Text                     ${InputAddress}  ${Address}
    Click Element                  ${SelectState}
    Click Element                  ${ClickState}
    Click Element                  ${SelectCity}
    Click Element                  ${ClickCity}
Verify Form
#   ${actualResult}=    Get Text    ${GtextName}
#     Should Be Equal    ${actualResult}    ${studentName}
#     ${actualResult}=    Get Text    ${GtextEmail} 
#     Should Be Equal    ${actualResult}    ${studentEmail}
#     ${actualResult}=    Get Text    ${GtextGender}
#     Should Be Equal    ${actualResult}    ${Gender}
#     ${actualResult}=    Get Text    ${GtextMobile} 
#     Should Be Equal    ${actualResult}    ${Mobile}
#     ${actualResult}=    Get Text    ${GtextDoB}
#     Should Be Equal    ${actualResult}    ${DateofBirth}
#     ${actualResult}=    Get Text    ${GtextSubjects}
#     Should Be Equal    ${actualResult}    ${Subject}
#     ${actualResult}=    Get Text    ${GtextHobbies}
#     Should Be Equal    ${actualResult}    ${Hobbies}
#     ${actualResult}=    Get Text    ${GtextPicture}
#     Should Be Equal    ${actualResult}    ${Picture}
#     ${actualResult}=    Get Text   ${GtextAddress}
#     Should Be Equal    ${actualResult}    ${Address}
#     ${actualResult}=    Get Text    ${GtextSaC}
#     Should Be Equal    ${actualResult}    ${State&City}
        FOR    ${index}    IN RANGE    0    ${fields.__len__()}
        ${field}=    Set Variable    ${fields[${index}]}
        ${expectedValue}=    Set Variable    ${values[${index}]}
        ${actualResult}=    Get Text    ${field}
        Should Be Equal    ${actualResult}    ${expectedValue}
    END
Access Book Store Application
    Wait Until Element Is Visible  ${mainPage}
    Click Element                  ${mainPage}
    Wait Until Element Is Visible   ${Book}
    Execute JavaScript              ${JavaScript}
    Click Element                   ${Book}
    Sleep  3s
Register to Book Store
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${login}
    Click Element                  ${NewUser}
    Input Text                     ${FirstNameR}   ${FNameR}
    Input Text                     ${LastNameR}    ${LNameR}
    Input Text                     ${UsernameR}   ${userName}
    Input Password                 ${PasswordR}   ${Password}
    Sleep  2s
    Wait Until Element Is Visible  ${clickiFrame}
    Execute JavaScript             ${JavaScript}            #
    Click Element                  ${clickiFrame}
    Sleep  18s
    Wait Until Element Is Visible  ${BtRegister}
    Execute JavaScript             ${JavaScript}
    Click Element                  ${BtRegister}  
verify Register
    ${message}=  Handle Alert  action=ACCEPT                                  #xử lý cửa sổ cảnh báo,action=ACCEPT là chấp nhận (accept) cửa sổ cảnh báo.
    Should Be Equal    ${message}      ${ExAlertMessage}
login   
    Click Element      ${Login}
    Input Text         ${UsernameL}    ${UserName} 
    Input Text         ${PasswordL}    ${Password}
    Click Button       ${BtLogin}
    Sleep  3s
verify login
    ${actualResult}=  Get Text         ${GtextUserName}                             #sử dụng để lấy nội dung văn bản của phần tử được xác định bởi ${gtextUserName}
    Should Be Equal   ${actualResult}  ${UserName}
    # Page Should Contain Element    ${BtLogout}
 