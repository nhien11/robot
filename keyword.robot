*** Settings ***
Library    SeleniumLibrary
Resource    variable.robot
*** Keywords ***
Suite Setup
  Open Browser  ${Open}   ${chrome} 
  Maximize Browser Window
Access Forms
    Wait Until Element Is Visible  ${Form}
    Execute JavaScript             ${Windowsr} 
    Click Element                  ${Form}
Input Form
    Click Element                  ${PracticeForm}
    Input Text                     ${InputFirstName}    ${FName} 
    Input Text                     ${InputLastName}     ${LName}
    Input Text                     ${InputEmail}  ${StudentEmail}
    Wait Until Element Is Visible  ${ClickGender}
    Execute JavaScript             ${Windowsr}  
    Click Element                  ${ClickGender}
    Input Text                     ${InputMobile}  ${Mobile}
    Wait Until Element Is Visible  ${Selectdob}
    Click Element                  ${Selectdob}
    Wait Until Element Is Visible  ${Appear}

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
    Click Element                    ${Submit}
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
    FOR    
    ...    ${index}    IN RANGE    0    ${fields.__len__()}
           ${field}=    Set Variable    ${fields[${index}]}
           ${expectedValue}=    Set Variable    ${values[${index}]}
           ${actualResult}=    Get Text    ${field}
           Should Be Equal    ${actualResult}    ${expectedValue}
    END
    Click Element                    ${Close}
Access Book Store Application
    Wait Until Element Is Visible  ${MainPage}
    Click Element                  ${MainPage}
    Wait Until Element Is Visible   ${Book}
    Execute JavaScript              ${Windowsr} 
    Click Element                   ${Book}
    Sleep  3s
Register to Book Store
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${Login}
    Click Element                  ${NewUser}
    Input Text                     ${FirstNameR}   ${FNameR}
    Input Text                     ${LastNameR}    ${LNameR}
    Input Text                     ${UsernameR}   ${UserName}
    Input Password                 ${PasswordR}   ${Password}
    Sleep  2s
    Wait Until Element Is Visible  ${ClickiFrame}
    Execute JavaScript             ${Windowsr}             #
    Click Element                  ${ClickiFrame}
    Sleep  18s
    Wait Until Element Is Visible  ${BtRegister}
    Execute JavaScript             ${Windowsr} 
    Click Element                  ${BtRegister}  
verify Register
    ${message}=  Handle Alert  action=ACCEPT                                 
    Should Be Equal    ${message}      ${ExAlertMessage}
login   
    Click Element      ${Login}
    Input Text         ${UsernameL}    ${UserName} 
    Input Text         ${PasswordL}    ${Password}
    Click Button       ${BtLogin}
    Sleep  3s
verify login
    ${actualResult}=  Get Text         ${GtextUserName}                             
    Should Be Equal   ${actualResult}  ${UserName}
    
 