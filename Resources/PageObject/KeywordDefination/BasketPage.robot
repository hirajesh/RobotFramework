*** Settings ***
Variables   ../Locators/BasketPageLocators.py


*** Keywords ***

Click Checkout Now Button In Basket Page

  Element Should Be Visible  ${CheckoutNow}  timeout=20
  Log  ${CheckoutNow} CheckoutNow button displayed
  Click Element  ${CheckoutNow}

Click Checkout Now Button In Pre Basket Page

  Element Should Be Visible  ${CheckoutNow}  timeout=20
  Log  ${CheckoutNow} CheckoutNow button displayed
  Click Element  ${CheckoutNow}

Verify Successfully added to your basket Message In Pre Basket Page

   Element Should Be Visible  ${SuccessBasketMessage}
   Log  ${SuccessBasketMessage} Successfully added to your basket Message Displayed

   ${sucessBasketText}  Get Text  ${SuccessBasketMessage}
   Should Be Equal  ${sucessBasketText}  ${SuccessBasketText}
   Log  ${sucessBasketText}

Verify Continue Shopping Button

    Element Should Be Visible  ${ContinueShoppingButton}
    Log  ${ContinueShoppingButton} Continue Shopping Button Displayed

   ${ContinueShoppingText}  Get Text  ${ContinueShoppingButton}
   Should Be Equal  ${ContinueShoppingText}  ${ContinueShoppingButtonText}
   Log  ${ContinueShoppingText}

