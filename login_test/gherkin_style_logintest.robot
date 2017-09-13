*** Settings ***
Documentation     Test suite written in Gherkin style for u vegan cucumber is vegetable so... got it? ok :/
Resource          resource.robot
Test Teardown     Close Browser

*** Test Case ***
Valid_Login
  Given browser is opened to login page
  When user enter valid credential
  Then Welcome Page Should Be Open

Invalid_Login
  Given browser is opened to login page
  When user enter invalid credential
  Then user will see error message "Incorrect username or password."
