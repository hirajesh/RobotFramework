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
Resource  ../../Resources/PageObject/KeywordDefination/OrderDetailsPage.robot
Resource  ../../Resources/PageObject/KeywordDefination/OrderHistoryPage.robot
Variables  ../TestData/TestDatas.py
Variables  ../TestData/ProjectProperties.py








Test Setup  Open The Web Browser
Test Teardown  Close The WebBrowser
*** Variables ***


*** Test Cases ***



TC_001_Verify That The Register User Is Able To Place COD Order With Home Delivery Shipping Method

    [documentation]  This script will execute place the reg user hd cod order : Areas Covered [Sign-in,Search,PLP,PDP,Add To Basket,Checkout Now,Choose HD,Choose COD Payment, Place the order]
    [tags]  Regression

     Capture Page Screenshot	home_page.png
     Navigate To Sing-In Page
     Verify Sign-In Page
     Enter Valid UserName And Password Then Click Submit
     Click Basket button
     Search Pillow In Search Bar
     Choose Product From PLP Page
     Select The Size And Click Add To Basket Button in PDP Page
     Click Checkout Now Button In Pre Basket Page
     Click Checkout Now Button In Basket Page
     Choose Home Delivery As A Shipping Method
    # Select Saved Address
     Choose COD Payment
     Click Place Order Button
     Close Rating POP-UP Window In Thank You Page
     Click Order Number HyperLink
     Capture Order Number
     Click Cancel Items Link
     Click Select All Product Checkbox
     Choose Cancel Reason
     Click Cancel Button And Cancel The Order
     #Verify Order Cancelled Status Updated In Product Details Page


TC_002_Verify That The Guest User Is Able To Place Paypal Click And Collect Order With Valid Paypal Credentials

    [documentation]  This script will place the guest user cnc paypal order : Areas Covered [Search,PLP,PDP,Add To Basket,Checkout Now,,Checkout As Guest User,Choose CNC,Choose PAYPAL Payment, Place the order]
    [tags]  Regression

     Search Pillow In Search Bar
     Choose Product From PLP Page
     Select The Size And Click Add To Basket Button in PDP Page
     Click Checkout Now Button In Pre Basket Page
     Click Checkout Now Button In Basket Page
     Click Checkout As Guest Link
     Choose CNC Shipping Method
     Select CNC Stores
     Fill Full Name Mobile Email
     Choose PAYPAL Payment
     Click Place Order Button
     Fill Paypal Email And Passsword
     Close Rating POP-UP Window In Thank You Page
     Enter Valid User Password
     Click Create Account Button
     Close Guest User Mobile Verification Pop-Up
     Select Order Menu
     Select Placed Order
     Capture Order Number
     Click Cancel Items Link
     Click Select All Product Checkbox
     Choose Cancel Reason
     Click Cancel Button And Cancel The Order
     #Verify Order Cancelled Status Updated In Product Details Page


TC_003_Verify That The Register User Is Able To Place Paypal Home Delivery Order With Valid Paypal Credentials

    [documentation]  This script will place the reg user home delivery paypal order : Areas Covered [Sign-in,Search,PLP,PDP,Add To Basket,Checkout Now,Choose CNC,Choose PAYPAL Payment, Place The Order]
    [tags]  Regression

     Capture Page Screenshot	home_page.png
     Navigate To Sing-In Page
     Verify Sign-In Page
     Enter Valid UserName And Password Then Click Submit
     Click Basket button
     Search Pillow In Search Bar
     Choose Product From PLP Page
     Select The Size And Click Add To Basket Button in PDP Page
     Click Checkout Now Button In Pre Basket Page
     Click Checkout Now Button In Basket Page
     Choose Home Delivery As A Shipping Method
   #  Select Saved Address
     Choose PAYPAL Payment
     Click Place Order Button
     Fill Paypal Email And Passsword
     Capture Page Screenshot	thankyou_page.png
     Close Rating POP-UP Window In Thank You Page
     Click Order Number HyperLink
     Capture Order Number
     Click Cancel Items Link
     Click Select All Product Checkbox
     Choose Cancel Reason
     Click Cancel Button And Cancel The Order
     #Verify Order Cancelled Status Updated In Product Details Page

TC_004_Verify That The Register User Is Able To Place Paypal Click And Collect Order With Valid Paypal Credentials

    [documentation]  This script will place the reg user click and collect paypal order : Areas Covered [Sign-in,Search,PLP,PDP,Add To Basket,Checkout Now,Choose CNC,Choose PAYPAL Payment, Place The Order]
    [tags]  Regression

     Capture Page Screenshot	home_page.png
     Navigate To Sing-In Page
     Verify Sign-In Page
     Enter Valid UserName And Password Then Click Submit
     Click Basket button
     Search Pillow In Search Bar
     Choose Product From PLP Page
     Select The Size And Click Add To Basket Button in PDP Page
     Click Checkout Now Button In Pre Basket Page
     Click Checkout Now Button In Basket Page
     Choose CNC Shipping Method
     Select CNC Stores
     Fill Reg User Mobile In Payment Page
     Choose PAYPAL Payment
     Click Place Order Button
     Fill Paypal Email And Passsword
     Capture Page Screenshot	thankyou_page.png
     Close Rating POP-UP Window In Thank You Page
     Click Order Number HyperLink
     Capture Order Number
     Click Cancel Items Link
     Click Select All Product Checkbox
     Choose Cancel Reason
     Click Cancel Button And Cancel The Order
     #Verify Order Cancelled Status Updated In Product Details Page


*** Keywords ***