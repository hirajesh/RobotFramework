*** Settings ***
Variables  ../Locators/OrderHistoryLocators.py
Variables  ../Locators/CommonLocators.py



*** Keywords ***

Click Order History
  Wait Until Element Is Visible  ${OrderHistory}  timeout=15
  Click Element   ${OrderHistory}


Select Placed Order
  Wait Until Element Is Visible  ${SelectOrder}  timeout=15
  Click Element   ${SelectOrder}

Select Order Menu
  Element Should Be Visible   ${Order}  timeout=15
  Click Element   ${Order}

