*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/SignInPageLocators.py
Variables  ../Locators/CommonLocators.py


*** Keywords ***

Navigate To Sing-In Page
      Wait Until Element Is Visible  ${SignInLink}  timeout=10
      Click Element  ${SignInLink}
      ${page_title}=    Get Title
      RETURN    ${page_title}
      Log     ${page_title}

Verify Sign In Page Details

      Page Should Contain  Sign In Now
       ${text}  Get Text  ${SignPageText}
       Should Be Equal  ${text}  ${SignInPage}
       Log  ${text}

     Element Should Be Visible  ${FBButton}
      Log  ${FBButton} FB button displayed
     Element Should Be Visible  ${UsernameTextBox}
      Log  ${UsernameTextBox} Username button displayed
     Element Should Be Visible  ${PasswordTextBox}
      Log  ${UsernameTextBox} Password button displayed

     ${fbtext}  Get Text  ${FBButton}
      Should Be Equal  ${fbtext}  ${FBMessage}
      Log  ${fbtext}

     ${emailtext}  Get Text  ${EmailLable}
      Should Be Equal  ${emailtext}  ${EmailText}
      Log  ${emailtext}

     ${passwordtext}  Get Text  ${PasswordLable}
      Should Be Equal  ${passwordtext}  ${PwdText}
      Log  ${passwordtext}

     ${logintext}  Get Text  ${Loginbutton}
      Should Be Equal  ${logintext}  ${SignInButtonText}
      Log  ${logintext}

     ${donthaveaccounttext}  Get Text  ${Donthaveanaccount}
      Should Be Equal  ${donthaveaccounttext}  ${DonthaveanaccountText}
      Log  ${logintext}


Enter Valid UserName And Password Then Click Submit

     Input Text  ${UsernameTextBox}  ${ValidUserName}
     Input Text  ${PasswordTextBox}  ${ValidPassword}
     Click Element  ${Loginbutton}
     Sleep  3s


Enter InValid UserName And Password Then Click Submit
     Element Should Be Visible  ${UsernameTextBox}  timeout=5
     Input Text  ${UsernameTextBox}  ${InValidUserName}
     Input Text  ${PasswordTextBox}  ${InValidPassword}
     Click Element  ${Loginbutton}
     Sleep  5s
     Page Should Contain  Your Username or Password is incorrect

Close Mobile Verification Pop-Up Window
     Wait Until Element Is Visible  ${CloseMobileVerification}  timeout=10
     Click Element  ${CloseMobileVerification}
Click Basket button
     Click Element  ${BasketLogo}

Click Checkout As Guest Link
     Click Element  ${CheckoutAsGuest}
