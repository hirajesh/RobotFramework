*** Settings ***
Variables  ../Locators/ThankYouPageLocators.py


*** Keywords ***

Close Rating POP-UP Window In Thank You Page

  Sleep  5s
  Click Element  ${CloseRatingPopUp}

Enter Valid User Password
  Wait Until Element Is Visible  ${Password}  timeout=15
  Input Text  ${Password}  123456

Click Create Account Button
  Click Element  ${CreateAccountButton}
  Sleep  5s


Close Guest User Mobile Verification Pop-Up

  Wait Until Element Is Visible  ${GuestUserCloseMobileVerification}  timeout=15
  Click Element  ${GuestUserCloseMobileVerification}
  Sleep  3s

Give Rating For The Shopping
   Sleep  5s
   ${rating}=    Get WebElements     ${RatingList}
   Click Element  ${rating}[9]

Give The What did you like the most option
 #  Wait Until Element Is Visible  ${WhatDidYouLikeMostList}  timeout=15
   Sleep  2s
   ${mostlike}=    Get WebElements     ${WhatDidYouLikeMostList}
   Click Element  ${mostlike}[3]

Submit The Response in Thankyou Page
   Click Element  ${Submit}
   Click Element  ${KeepShopping}




