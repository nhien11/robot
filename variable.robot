*** Variables ***
${Form}                           xpath=//h5[text() = 'Forms']
${PracticeForm}                   xpath=//span[contains(text(),'Practice Form')]
${InputFirstName}                 xpath=//input[@id="firstName"]
${InputLastName}                  xpath=//input[@id="lastName"]
${InputEmail}                     xpath=//input[@id="userEmail"]
${ClickGender}                    xpath=//label[@for='gender-radio-1']
${InputMobile}                    xpath=//input[@id="userNumber"]
${Selectdob}                      xpath=//input[@id='dateOfBirthInput']
${Wait Until Element Is Visible}  xpath=//div[@class='react-datepicker__month-container']
${selectday}                      xpath=//div[@class='react-datepicker__day react-datepicker__day--030']
${selectmonth}                    xpath=//select[@class="react-datepicker__month-select"]
${selectyear}                     xpath=//select[@class="react-datepicker__year-select"]
${InputSubjects}                  xpath=//input[@id='subjectsInput']  
${ClickHobbies1}                  xpath=//label[contains(text(),'Sports')]
${ClickHobbies2}                  xpath=//label[contains(text(),'Music')]
${Choosefile}                     xpath=//input[@id='uploadPicture']  
${InputAddress}                   xpath=//textarea[@placeholder="Current Address"]
${SelectState}                    xpath=//div[contains(text(),'Select State')]
${ClickState}                     xpath=//div[contains(text(),'NCR')]
${SelectCity}                     xpath=//div[contains(text(),'Select City')]
${ClickCity}                      xpath=//div[contains(text(),'Delhi')]
${Submit}                         xpath=//button[@type='submit']
${Close}                          xpath=//button[@id="closeLargeModal"]
#GETTEXT
${GtextName}      xpath=//td[text()='Student Name']/following-sibling::td
${GtextEmail}     xpath=//td[text()='Student Email']/following-sibling::td
${GtextGender}    xpath=//td[text()='Gender']/following-sibling::td
${GtextMobile}    xpath=//td[text()='Mobile']/following-sibling::td
${GtextDoB}       xpath=//td[text()='Date of Birth']/following-sibling::td
${GtextSubjects}  xpath=//td[text()='Subjects']/following-sibling::td
${GtextHobbies}   xpath=//td[text()='Hobbies']/following-sibling::td
${GtextPicture}   xpath=//td[text()='Picture']/following-sibling::td
${GtextAddress}   xpath=//td[text()='Address']/following-sibling::td
${GtextSaC}       xpath=//td[text()='State and City']/following-sibling::td

#DULIEU
${StudentName}  John Smith
${StudentEmail}  john.smith@example.com
${Mobile}  0704519427
${Gender}  Male
${DateofBirth}  30 October,2001
${Subject}    Hindi
${Hobbies}  Sports, Music
${Picture}  BangCuuChuong
${Address}  1234 Main Street
${State&City}  NCR Delhi

${Book}  xpath=//h5[text()='Book Store Application']
${login}                 xpath=//span[contains(text(),'Login')]
${NewUser}               xpath=//button[text()='New User'] 
${UsernameR}        xpath=//input[@id="userName"]
${PasswordR}        xpath=//input[@id="password"]
${clickiFrame}           xpath=//iframe[@title='reCAPTCHA']
${BtRegister}              xpath=//button[@id='register']              
${FirstNameR}       xpath=//input[@id="firstname"]
${LastNameR}        xpath=//input[@id="lastname"]
${UsernameL}        xpath=//input[@placeholder="UserName"]
${PasswordL}        xpath=//input[@placeholder="Password"]
${BtLogin}               xpath=//button[@id="login"]
${BtLogout}
${userName}        tranthi9
${Password}        Thuynhien1@
${exAlertMessage}  User Register Successfully.
${gtextUserName}  xpath=//label[@id="userName-value"]
${mainPage}    //a[@href="https://demoqa.com"]

 