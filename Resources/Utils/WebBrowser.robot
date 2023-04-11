*** Settings ***
Library  SeleniumLibrary
Variables  ../../Resources/PageObject/TestData/Config.py

*** Variables ***

*** Keywords ***
Open The Web Browser

 # [Arguments]   ${url}   ${browser}
  #Open Browser   ${url}  ${browser}
  #Maximize Browser Window
   ${options} =    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
   ${userAgent} =  set variable  --user-agent=AASA-Bot/2.0.0
   Call Method    ${options}  add_argument  ${userAgent}
   Create WebDriver    Chrome    chrome_options=${options}
   Maximize Browser Window

 #  Create WebDriver    Chrome

    IF    "${Environment}" == "UAT1"
      IF    "${Concept}" == "Homecentre"
       # Open Browser   ${Homecentre_Uat1_URL}  ${Browser}
          Goto  ${Homecentre_Uat1_URL}
       ELSE IF     "${Concept}" == "Max"
        #Open Browser   ${Max_Uat1_URL}  ${Browser}
          Goto  ${Max_Uat1_URL}
       ELSE IF     "${Concept}" == "Centrepoint"
        #Open Browser   ${Centrepoint_Uat1_URL}  ${Browser}
          Goto  ${Centrepoint_Uat1_URL}
       ELSE IF     "${Concept}" == "Babyshop"
        #Open Browser   ${Babyshop_Uat1_URL}  ${Browser}
          Goto  ${Babyshop_Uat1_URL}
       ELSE
        Fail  Please verify the concept name and verify you are given proper concept name
       END

     ELSE IF     "${Environment}" == "BETA"
        IF    "${Concept}" == "Homecentre"
           Goto ${Homecentre_Beta_URL}
         ELSE IF     "${Concept}" == "Max"
           Goto ${Homecentre_Beta_URL}
         ELSE IF     "${Concept}" == "Centrepoint"
           Goto ${Homecentre_Beta_URL}
         ELSE IF     "${Concept}" == "Babyshop"
           Goto ${Homecentre_Beta_URL}
         ELSE
          Fail  Please verify the concept name and verify you are given proper concept name
         END

     ELSE IF     "${Environment}" == "PROD"
         IF    "${Concept}" == "Homecentre"
           #Open Browser   ${Homecentre_URL}  ${Browser}
           Goto  ${Homecentre_URL}
          ELSE IF     "${Concept}" == "Max"
            Goto  ${Max_URL}
            #Open Browser   ${Max_URL}  ${Browser}
          ELSE IF     "${Concept}" == "Centrepoint"
            Goto  ${Centrepoint_URL}
           # Open Browser   ${Centrepoint_URL}  ${Browser}
          ELSE IF     "${Concept}" == "Babyshop"
            Goto  ${Babyshop_URL}
           # Open Browser   ${Babyshop_URL}  ${Browser}
          ELSE
            Fail  Please verify the concept name and verify you are given proper concept name
          END

     ELSE
        Fail  Please verify the environment name and verify you are given proper environment name
     END


  #Set Window Size  360  740
  Maximize Browser Window
  Set Selenium Implicit Wait  30 seconds

Close The WebBrowser
      Close Browser
