*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://demoqa.com/    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Access to Forms page
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://h5[text() = 'Forms']
    Execute JavaScript
    Sleep    3s
    Click Element    xpath://h5[text() = 'Forms']
    Wait Until Element Is Visible   xpath://span[text()='Practice Form']
     Execute JavaScript    window.scrollBy(0,3000)
    Sleep    3s
    Click Element   xpath://span[text()='Practice Form']
     Sleep    3s
     Wait Until Page Contains Element  xpath=//input[@id='firstName']
    Input Text  xpath=//input[@id='firstName']  John
    Sleep    3s
    Input Text  xpath=//input[@id='lastName']  Smith
    Sleep    3s
    Input Text  xpath=//input[@id='userEmail']  john.smith@example.com
    Sleep    3s
    Input Text  xpath=//input[@id='userNumber']  1234567890
    Sleep    3s
    Input Text  xpath=//textarea[@id='currentAddress']  1234 Main St
    Sleep    3s
     Wait Until Element Is Visible  xpath=//input[@id='subjectsInput']
    Execute JavaScript
    Sleep    3s
    Input Text  xpath=//input[@id='subjectsInput']  English
    Sleep    3s
    Press Keys  xpath=//input[@id='subjectsInput']  RETURN
     Sleep    3s
    Input Text  xpath=//input[@id='dateOfBirthInput']  01 Oct 1990
    Sleep    3s
    Input Text  xpath=//textarea[@id='currentAddress']  1234 Main St
    Sleep    3s
    Wait Until Element Is Visible  xpath=//button[@id='submit']
    Execute JavaScript
    Sleep    3s
    Click Element  xpath=//button[@id='submit']
    Wait Until Page Contains Element  xpath=//div[@class='modal-content']
    
