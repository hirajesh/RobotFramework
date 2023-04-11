*** Settings ***
Library   DateTime

Variables  ../Locators/PaymentPageLocators.py
Variables  ../TestData/TestDatas.py

*** Keywords ***

Verify Shipping Methods Details
   Sleep  5s
  Element Should Be Visible  ${Shippingmethod}
      Log  ${Shippingmethod} Shipping method displayed
      ${elements}    Get WebElements     ${Shippingmethod}

  Element Should Be Visible  ${elements}[0]
      Log  ${UsernameTextBox} CNC Shipping Method Displayed
  Element Should Be Visible  ${elements}[1]
      Log  ${UsernameTextBox} Home Delivery Shipping Method Displayed

  ${cnctext}  Get Text  ${ClickAndCollectHeading}
      Should Be Equal  ${cnctext}  ${CncText}
      Log  ${cnctext}

  ${hometext}  Get Text  ${HomeDeliveryHeading}
      Should Be Equal  ${hometext}  ${HdText}
      Log  ${hometext}

Verify Order Summary Details

    Sleep  5s
    Element Should Be Visible  ${YourOrderSummaryLabel}
      Log  ${YourOrderSummaryLabel} Your Order Summary Label Displayed

    Element Should Be Visible  ${SubTotalLabel}
      Log  ${SubTotalLabel} SubTotal Label Displayed

    Element Should Be Visible  ${StandaradShippingmessgeLabel}
      Log  ${StandaradShippingmessgeLabel} Standarad Shipping messge Label Displayed

    Element Should Be Visible  ${StandaradShippingmessgeAmountText}
      Log  ${StandaradShippingmessgeAmountText} Standarad Shipping Amount Displayed

    Element Should Be Visible  ${CODLable}
      Log  ${CODLable} COD Charges Displayed

    Element Should Be Visible  ${CODAmountText}
      Log  ${CODAmountText} COD Amount Displayed

    Element Should Be Visible  ${TotalAmountLabel}
      Log  ${TotalAmountLabel} Total Amount Label Displayed

    Element Should Be Visible  ${TotalAmountText}
      Log  ${TotalAmountText} Total Amount Displayed


   ${yourordersummary}  Get Text  ${YourOrderSummaryLabel}
      Should Be Equal  ${yourordersummary}  ${YourordersummaryText}
      Log  ${yourordersummary}

   ${subtotaltext}  Get Text  ${SubTotalLabel}
      Should Be Equal  ${subtotaltext}  ${SubtotalText}
      Log  ${subtotaltext}

#   ${stdtext}  Get Text  ${StandaradShippingmessgeLabel}
#      Should Be Equal  ${stdtext}  ${StandardGroundShippingText}
#      Log  ${stdtext}

   ${totalText}  Get Text  ${TotalAmountLabel}
      Should Be Equal  ${totalText}  ${TotalText}
      Log  ${totalText}

   ${subTotalAmoun}  Get Text  ${SubTotalAmountText}
   ${stdshipping}  Get Text  ${StandaradShippingmessgeAmountText}
   ${codAmoun}  Get Text  ${CODAmountText}
   ${totalAmoun}  Get Text  ${TotalAmountText}



   Log  ${subTotalAmoun}
   Log  ${stdshipping}
   Log  ${codAmoun}
   Log  ${totalAmoun}


Choose Home Delivery As A Shipping Method

#  Element Should Be Visible  ${HomeDelivery}  timeout=15
#  Click Element  ${HomeDelivery}
  ${elements}    Get WebElements     ${Shippingmethod}
   Click Element  ${elements}[1]

Choose CNC Shipping Method

#  Sleep  5s
#  Element Should Be Visible  ${CNC}  timeout=15
#  Click Element  ${CNC}
#  Sleep  5s
   Sleep  5s
   ${elements}=    Get WebElements     ${Shippingmethod}
   Click Element  ${elements}[0]
   Sleep  5s

Select CNC Stores
  Sleep  5s
  Click Element  ${CNCSearchbar}
  Sleep  3s
  Click Element   ${ViewFullListStores}
  #Input Text  ${CNCSearchbar}  Saudi
  Sleep  3s
  Click Element  ${CNCStoreList}

Fill Full Name Mobile Email

  ${CurrentDate}    Get Current Date    result_format=%S%H%M%d%m%Y
  Log    ${CurrentDate}
  Input Text  ${FullName}  Robot Automation
  Input Text  ${Mobile}  ${CurrentDate}
  Input Text  ${Email}  Robot${CurrentDate}@gmail.com

Fill Reg User Mobile In Payment Page

  ${CurrentDate}    Get Current Date    result_format=%S%H%M%d%m%Y
  Input Text  ${Mobile}  ${CurrentDate}


Fill Card Number Card Holder Name
  Input Text  ${CardNumber}  ${Visa_Card}
  #Input Text  ${CardNumber}  ${Master_card}
  Sleep  3s
  Input Text  ${CardHolderName}  ${CardOwnerName}
  Input Text  ${CVV}  ${CardCvv}
  Sleep  3s


Fill CVV For Reg User
    Input Text  ${RegCVV}  ${CardCvv}


Fill Card MM And YYYY
  Click Element  ${MM}
  Click Element  ${Month}
  Click Element  ${YYYY}
  Click Element  ${Year}


Choose COD Payment
  Sleep  3s
  Element Should Be Visible  ${COD}  timeout=5
  Click Element  ${COD}

Choose PAYPAL Payment
  Sleep  3s
  Element Should Be Visible  ${Paypal}  timeout=5
  Click Element  ${Paypal}

Fill Paypal Email And Passsword
  Wait Until Element Is Visible  ${PaypalEmail}  timeout=15
  Input Text  ${PaypalEmail}   ${Paypal_AE}
  Click Element  ${PaypalNext}
  Sleep  3s
  Wait Until Element Is Visible  ${PaypalPassword}  timeout=15
  Input Text  ${PaypalPassword}   ${Paypal_AE_Password}
  Sleep  3s
  Click Element  ${PaypalLogin}
  Sleep  5s
  Click Element  ${PaypalConfirmationButton}
  Sleep  3s



Click Place Order Button

  ${CurrentDate}    Get Current Date    result_format=%S%H%M%d%m%Y
  Log    ${CurrentDate}
  Sleep  3s
  Element Should Be Visible  ${PlaceOrder}  timeout=5
  Click Element  ${PlaceOrder}

Select Saved Address

   ${elements}=    Get WebElements     ${SavedAddress}
   Click Element  ${elements}[1]

#  Element Should Be Visible  ${SavedAddress}  timeout=5
#  Click Element  ${SavedAddress}

Pin bar search
    Element Should Be Visible  ${PinbarSearch}  timeout=5
    Click Element  ${PinbarSearch}
    Input Text  ${PinbarSearch}  United Arab Emirates
    Press Keys  ${PinbarSearch}   RETURN
    Click Element  ${ConfirmLocation}
    Input Text  ${BuildingName}  building
    Input Text  ${FloorApartment}  apartment


    Input Text  ${HdFullname}  name name
    Input Text  ${HdMobile}  657756756658
    Input Text  ${HdEmail}  yuyu@gmail.com

Fill Map Details
    Element Should Be Visible  ${PinbarSearch}  timeout=5
    Click Element  ${PinbarSearch}
    Input Text  ${PinbarSearch}  United Arab Emirates
    Press Keys  ${PinbarSearch}   RETURN
    Click Element  ${ConfirmLocation}


Fill Guest User Address Details
  Click Element  ${Emirate}
  Click Element  ${ShippingCountry}
  Sleep  3s

  Click Element  ${ShippingArea}
  Click Element  ${AreaValue}

  Input Text  ${BuildingName}  building
  Input Text  ${FloorApartment}  apartment

  Input Text  ${HdFullname}  name name
    Input Text  ${HdEmail}  yuyu@gmail.com
  Input Text  ${HdMobile}  657756756658
