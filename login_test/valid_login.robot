*** Settings ***
Documentation       A Test Suite to test valid login.
Resource             resource.robot

*** Test Cases ***
Valid Login
  Open Browser to Login Page
  Login Page Should Be Open
  Submit Valid Credential
  Welcome Page Should Be Open
  [Teardown]    Close Browser
