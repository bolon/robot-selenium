# robot-selenium
Demo for Automate web testing using robot & selenium

# Pre-req
``Python`` & ``Pip`` installed in machine
Install ``robotframework``
Install ``robotframework-selenium`` --> lib to access web layer

# Execute test
### Run whole test in a project
* Go to root project
* Run this command from cli ``robot folder_name`` ex : ``robot login_test``
### Run specific test suite
* Go to root project
* Run this command from cli ``robot folder_name/file_name.robot``
### Run specific test case
* Go to root project
* Run this command from cli ``robot -t test_case_name folder_name/file_name.robot`` Note : Test case name with whitespace should be considered to be appended
