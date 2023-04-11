*** Settings ***
Variables  ../Locators/OrderDetailsLocators.py
Variables  ../TestData/Messages.py


*** Keywords ***
Click Order Number HyperLink
  Click Element  ${OrderNumberHyperLink}


Capture Order Number
     ${OrderNumberText}  Get Text  ${OrderNumber}

Click Cancel Items Link
   Sleep  3s
   Click Element  ${CancelItems}

Click Select All Product Checkbox
  Sleep  1s
  Click Element  ${SelectAllProductCheckbox}

Choose Cancel Reason
  Click Element  ${CancelReasonDropDown}
  Click Element  ${CancelReason}

Click Cancel Button And Cancel The Order
  CLick Element  ${CancelButton}
  Sleep  5s

Verify Order Cancelled Status Updated In Product Details Page

  TRY
     Wait Until Element Is Visible    ${CancelledText}
     ${CancelText}  Get Text  ${CancelledText}
     Should Be Equal As Strings    ${CancelText}    ${CancelledStatus}

  EXCEPT  Exception:
        Error Handler Keyword
  END
