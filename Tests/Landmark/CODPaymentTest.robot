*** Settings ***
Library  SeleniumLibrary
Resource  ../../Resources/Utils/WebBrowser.robot
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

TC_001_Verify That The Register User Is Able To Place COD Order With Home Delivery Shipping Method

    [documentation]  This script will execute place the reg user hd cod order : Areas Covered [Sign-in,Search,PLP,PDP,Add To Basket,Checkout Now,Choose HD,Choose COD Payment, Place the order]
    [tags]  Regression   ${Concept} - ${Country} -

     Capture Page Screenshot	home_page.png
     Navigate To Sing-In Page
     Verify Sign In Page Details
     Enter Valid UserName And Password Then Click Submit
     Click Basket button
     Search Valid keyword In Search Bar
     Choose Product From PLP Page
     Select The Size And Click Add To Basket Button in PDP Page
     Click Checkout Now Button In Pre Basket Page
     Click Checkout Now Button In Basket Page
     Verify Shipping Methods Details
     Choose Home Delivery As A Shipping Method
     #Fill Map Details

    # Select Saved Address
     Choose COD Payment
     Verify Order Summary Details
     Click Place Order Button
    # Give Rating For The Shopping
    # Give The What did you like the most option
    # Submit The Response in Thankyou Page

     Close Rating POP-UP Window In Thank You Page
     Click Order Number HyperLink
     Capture Order Number
     Click Cancel Items Link
     Click Select All Product Checkbox
     Choose Cancel Reason
     Click Cancel Button And Cancel The Order
     #Verify Order Cancelled Status Updated In Product Details Page
