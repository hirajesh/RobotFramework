*** Settings ***
Variables  ../Locators/PDPPageLocators.py


*** Keywords ***

Select The Size And Click Add To Basket Button in PDP Page

  IF  "${Concept}" == "Max"
    Element Should Be Visible  ${SizeList_Max}  timeout=5
    Log  ${SizeList_Max} Size Chart Displayed
    ${size}=    Get WebElements     ${SizeList_Max}
    Click Element  ${size}[1]
   ELSE IF  "${Concept}" == "Centrepoint"
    Element Should Be Visible  ${SizeList_Centrepoint}  timeout=5
    Log  ${SizeList_Centrepoint} Size Chart Displayed
    ${size}=    Get WebElements     ${SizeList_Centrepoint}
    Click Element  ${size}[1]
   ELSE IF  "${Concept}" == "Splash"
    Element Should Be Visible  ${SizeList_Centrepoint}  timeout=5
    Log  ${SizeList_Centrepoint} Size Chart Displayed
    ${size}=    Get WebElements     ${SizeList_Centrepoint}
    Click Element  ${size}[1]
   ELSE
     Log  Sorry Size is not available !!!
   END

  IF  "${Concept}" == "Max"
      Element Should Be Visible  ${AddToBasket_Max}
      Log  ${AddToBasket_Max} Add To Basket Button Displayed

      ${addToBasket_Maxtext}  Get Text  ${AddToBasket_Max}
      Should Be Equal  ${addToBasket_Maxtext}  ${AddtoBasketMaxText}
      Log  ${addToBasket_Maxtext}

      Click Element  ${AddToBasket_Max}
   ELSE
      Element Should Be Visible  ${AddToBasket}
      Log  ${AddToBasket} Add To Basket Button Displayed

      ${textaddToBasket}  Get Text  ${AddToBasket}
      Should Be Equal  ${textaddToBasket}  ${textaddToBasket}
      Log  ${textaddToBasket}

      Element Should Be Visible  ${AddToBasket}  timeout=5
      Click Element  ${AddToBasket}
   END


Select The Size
   Element Should Be Visible  ${SizeList}  timeout=5
   ${size}=    Get WebElements     ${SizeList}
   Click Element  ${SizeList}[1]
