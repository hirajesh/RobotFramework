*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/SearchPageLocators.py
*** Keywords ***



Search Valid keyword In Search Bar

     Wait Until Element Is Visible  ${SearchBar}  timeout=10
     IF  "${Concept}" == "Homecentre"
       Input Text  ${SearchBar}  ${Search_Homecentre}
       Press Keys  ${SearchBar}  RETURN
      ELSE IF  "${Concept}" == "Max"
        Input Text  ${SearchBar}  ${Search_Max}
        Press Keys  ${SearchBar}  RETURN
      ELSE IF  "${Concept}" == "Babyshop"
        Input Text  ${SearchBar}  ${Search_Babyshop}
        Press Keys  ${SearchBar}  RETURN
      ELSE IF  "${Concept}" == "Centrepoint"
        Input Text  ${SearchBar}  ${Search_Centrepoint}
        Press Keys  ${SearchBar}  RETURN
      ELSE
        Fail  Please verify the search keyword
      END
      Sleep  3s

Choose Product From PLP Page
  IF  "${Concept}" == "Max"
     ${elements}=    Get WebElements     ${MaxProductList}
     Click Element  ${elements}[1]
   ELSE
     ${elements}=    Get WebElements     ${ProductLists}
     Click Element  ${elements}[3]
   END


