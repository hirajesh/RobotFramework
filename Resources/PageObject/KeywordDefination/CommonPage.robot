*** Settings ***
Variables  ../Locators/CommonLocators.py

*** Keywords ***

Click User Greetings

  Sleep  5s
  Element Should Be Visible  ${UserGreetings}  timeout=15
  Click Element  ${UserGreetings}
  Sleep  5s

