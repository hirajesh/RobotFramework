*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Utils/WebBrowser.robot
Resource  ../../Resources/PageObject/KeywordDefination/LoginPage.robot
Resource  ../../Resources/PageObject/KeywordDefination/SignInPage.robot
Resource  ../../Resources/PageObject/KeywordDefination/SearchPage.robot
Resource  ../../Resources/PageObject/KeywordDefination/PDPPage.robot
Resource  ../../Resources/PageObject/KeywordDefination/BasketPage.robot
Resource  ../../Resources/PageObject/KeywordDefination/PaymentPage.robot
Resource  ../../Resources/PageObject/KeywordDefination/ThankYouPage.robot
Resource  ../../Resources/PageObject/KeywordDefination/CommonPage.robot





Test Teardown  Close The WebBrowser
*** Variables ***

${url}   https://lms.com:L@digital@uat1.homecentre.com/ae/en/
#${url}  https://www.homecentre.com/ae/en/
${browser}   Chrome

*** Test Cases ***


Verify the login page with valid username and password

    [documentation]  Verify the login page with valid username and password
    [tags]  Regression

     Open The Web Browser  ${url}  ${browser}
     Navigate To Sing-In Page
     Verify Sign-In Page
     Enter Valid UserName And Password Then Click Submit
     Close Mobile Verification Pop-Up Window

Verify the login page with Invalid username and password

    [documentation]  Verify the login page with Invalid username and password
    [tags]  Regression

     Open The Web Browser  ${url}  ${browser}
     Navigate To Sing-In Page
     Verify Sign-In Page
     Enter InValid UserName And Password Then Click Submit

*** Keywords ***