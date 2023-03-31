*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    https://demoqa.com/    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Access to Forms page
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://h5[text() = 'Forms']
    Execute JavaScript  window.scrollBy(0,3000)
    Click Element    xpath://h5[text() = 'Forms']
    Wait Until Element Is Visible   xpath://span[text()='Practice Form']
    Execute JavaScript    window.scrollBy(0,3000)
    Click Element   xpath://span[text()='Practice Form']
    Wait Until Page Contains Element  xpath=//input[@id='firstName']
    Input Text  xpath=//input[@id='firstName']  John
    Input Text  xpath=//input[@id='lastName']  Smith
    Input Text  xpath=//input[@id='userEmail']  john.smith@example.com
    Click Element  xpath=//label[@for='gender-radio-1']
    Input Text  xpath=//input[@id='userNumber']  1234567890
    Input Text  xpath=//textarea[@id='currentAddress']  1234 Main St
     Wait Until Element Is Visible  xpath=//input[@id='subjectsInput']
    Execute JavaScript  window.scrollBy(0,3000)
    Input Text  xpath=//input[@id='subjectsInput']  English
    Press Keys  xpath=//input[@id='subjectsInput']  RETURN
     Wait Until Element Is Visible    //input[@id='dateOfBirthInput']
  Click Element    //input[@id='dateOfBirthInput']
  Wait Until Element Is Visible    //div[@class='react-datepicker__month-container']
  Click Element    //div[@class='react-datepicker__day react-datepicker__day--027']
    Input Text  xpath=//textarea[@id='currentAddress']  1234 Main Street
    Execute JavaScript    document.getElementById("fixedban").remove();
    Execute JavaScript    document.querySelector("footer").remove();
    Click Element   xpath://button[@type='submit']
    Wait Until Page Contains Element  xpath=//button[@id='closeLargeModal']
    Click Element   xpath://button[@id='closeLargeModal']
    
