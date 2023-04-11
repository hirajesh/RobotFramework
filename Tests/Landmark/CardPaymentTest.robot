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

Test Setup  Open The Web Browser
Test Teardown  Close The WebBrowser
*** Variables ***

*** Test Cases ***


TC_001_Verify That The Guest User Is Able To Place Credit/Debit Card Click And Collect Order With Valid Card

    [documentation]  This script will place the guest user cnc credit/debit card order : Areas Covered [Search,PLP,PDP,Add To Basket,Checkout Now,,Checkout As Guest User,Choose CNC,Choose Card Payment, Place the order]
    [tags]  Regression


     Search Pillow In Search Bar
     Choose Product From PLP Page
     Select The Size And Click Add To Basket Button in PDP Page
     Click Checkout Now Button In Pre Basket Page
     Click Checkout Now Button In Basket Page
     Click Checkout As Guest Link
    # Choose CNC Shipping Method
     Select CNC Stores
     Fill Full Name Mobile Email
     Fill Card MM And YYYY
     Fill Card Number Card Holder Name
     Capture Page Screenshot	card_payment.png
     Click Place Order Button
     Capture Page Screenshot	thankyou_page.png
     Close Rating POP-UP Window In Thank You Page
     Click Order Number HyperLink
     Capture Order Number
     Click Cancel Items Link
     Click Select All Product Checkbox
     Choose Cancel Reason
     Click Cancel Button And Cancel The Order
 #    Verify Order Cancelled Status Updated In Product Details Page



TC_002_Verify That The Register User Is Able To Place Credit/Debit Card Order With Home Delivery Shipping Method

    [documentation]  This script will execute place the reg user hd credit/debit card order : Areas Covered [Sign-in,Search,PLP,PDP,Add To Basket,Checkout Now,Choose HD,Choose Card Payment, Place the order]
    [tags]  Regression


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
     Fill CVV For Reg User
     Click Place Order Button
     Close Rating POP-UP Window In Thank You Page
     Click Order Number HyperLink
     Capture Order Number
     Click Cancel Items Link
     Click Select All Product Checkbox
     Choose Cancel Reason
     Click Cancel Button And Cancel The Order
     #Verify Order Cancelled Status Updated In Product Details Page


TC_003_Verify That The Register User Is Able To Place Credit/Debit Click And Collect Order With Valid Card Details

    [documentation]  This script will place the reg user click and collect credit/debit order : Areas Covered [Sign-in,Search,PLP,PDP,Add To Basket,Checkout Now,Choose CNC,Choose Card Payment, Place The Order]
    [tags]  Regression


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
     Fill CVV For Reg User
     Click Place Order Button
     Capture Page Screenshot	thankyou_page.png
     Close Rating POP-UP Window In Thank You Page
     Click Order Number HyperLink
     Capture Order Number
     Click Cancel Items Link
     Click Select All Product Checkbox
     Choose Cancel Reason
     Click Cancel Button And Cancel The Order
     #Verify Order Cancelled Status Updated In Product Details Page

