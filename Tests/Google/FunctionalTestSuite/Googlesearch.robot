*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases ***
This is sample test cases
    [documentation]  Google Test
    [tags]  Regression Test

     Open Browser  http://www.google.com  chrome
     Close Browser

*** Keywords ***
