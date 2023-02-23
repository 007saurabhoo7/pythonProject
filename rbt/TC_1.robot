*** Settings ***


Library  SeleniumLibrary

*** Variables ***
${browser}   chrome
${url}      https://nobelpagedev.iworklab.com/


*** Test Cases ***
#SignUp
   #Open Browser      ${url}  ${browser}
   #Maximize Browser Window
   #Click Element    //span[text()='Create Account']
   #Input Text    (//input[@type='text'])[1]         Saurabh
  # Input Text    (//input[@type='text'])[2]         Sharma
   #Input Text    //input[@type='email']      saurabhh@yopmail.com
   #Input Text    //input[@type='password']     Pass@123
  # Input Text    //input[@type='tel']     2025550156
   #Click Button    //button[text()='Join Community']

BlankLogin
   Open Browser      ${url}  ${browser}
   Maximize Browser Window
   Wait Until Page Contains Element          //input[@type='email']
   Element Should Be Enabled       //input[@type='email']
   Element Should Be Visible       //input[@type='email']

   #Input Text       //input[@type='email']
   #Input Text       //input[@type='password']
   Click Button    //button[text()='Login to NobelPage']
   Sleep     5
   Reload Page

login With wrong Email

   Wait Until Page Contains Element          //input[@type='email']
   Element Should Be Enabled       //input[@type='email']
   Element Should Be Visible       //input[@type='email']

   Input Text       //input[@type='email']       saurabh1@@yopmail.com
   Input Text       //input[@type='password']     Pass@123
   Click Button    //button[text()='Login to NobelPage']
   Sleep     5
   Reload Page

login with wrong password
   Wait Until Page Contains Element          //input[@type='email']
   Element Should Be Enabled       //input[@type='email']
   Element Should Be Visible       //input[@type='email']

   Input Text       //input[@type='email']       saurabh1@yopmail.com
   Input Text       //input[@type='password']     Pass@12300000
   Click Button    //button[text()='Login to NobelPage']
   Wait Until Element Is Visible        //label[text()='The email and password combination you entered is not correct. Please try again.']
   ${combinationPrompt} =   Page Should Contain Element      //label[text()='The email and password combination you entered is not correct. Please try again.']    The email and password combination you entered is not correct. Please try again.
    Sleep    1

   Log To Console    The email and password combination you entered is not correct. Please try again.
   Sleep     5
   Reload Page

#Validate login with wrong password


#LoginTest
   #Open Browser      ${url}  ${browser}
   #Maximize Browser Window
   #Wait Until Page Contains Element          //input[@type='email']
   #Element Should Be Enabled       //input[@type='email']
   #Element Should Be Visible       //input[@type='email']

   #Input Text       //input[@type='email']     saurabh1@yopmail.com
   #Input Text       //input[@type='password']    S@ur@bh@12345
   #Click Button    //button[text()='Login to NobelPage']
   #Wait Until Page Contains Element     //span[text()='View My Profile']

   #Click Element    //span[text()='View My Profile']






*** Keywords ***
#TestKeyword1