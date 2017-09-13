*** Settings ***
Documentation       A Test Suite to test invalid login.
Resource            resource.robot
Test Teardown       Close Browser

*** Test Cases ***
Invalid Login
  Open Browser to Login Page
  Login Page Should Be Open
  Submit Invalid Credential
  Error Message Should Be Displayed
