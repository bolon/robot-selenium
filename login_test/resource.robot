*** Settings ***
Documentation   A resource file with reusable keywords and variables.
Library         Selenium2Library

*** Variables ***
${BASE_URL}     github.com
${BROWSER}      Google Chrome
${DELAY}        0
${VALID_USER}   testnnd
${VALID_PWD}    testnnd123
${INVALID_PWD}  1245678asd
${LOGIN_URL}    http://${BASE_URL}/login

*** Keywords ***
Open Browser to Login Page
  Open Browser    ${LOGIN_URL}    ${BROWSER}
  Maximize Browser Window
  Set Selenium Speed    ${DELAY}
  Login Page Should Be Open

Login Page Should Be Open
  Title Should Be    Sign in to GitHub · GitHub

Welcome Page Should Be Open
  Title Should Be    GitHub

Welcome Page Should Be not Open
  Should Not Be True    Title Should Be    Github

Error Message Should Be Displayed
  Page Should Contain    Incorrect username or password.

Submit Valid Credential
      #explicit selector using xpath
      #note : xpath in general slower than css selector
  #Input Text    xpath=//input[@id='login_field']    text
      #implicit call here
  Input Text    //input[@id='login_field']    ${VALID_USER}
  Input Text    password    ${VALID_PWD}
  Click Button    Sign in

Submit Invalid Credential
  Input Text    login_field    ${VALID_USER}
  Input Text    password    ${INVALID_PWD}
  Click Button    Sign in

#For gherkin purpose
Browser is opened to login page
  Open Browser to Login Page

User enter valid credential
  Submit Valid Credential

User enter invalid credential
  Submit Invalid Credential

User will see error message "${msg}"
  #Get error displayed
  ${msg_ex}=  Get Text    css=#js-flash-container > div > div
  Should Be Equal    ${msg_ex}    ${msg}
