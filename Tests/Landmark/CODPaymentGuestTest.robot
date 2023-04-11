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
#Test Teardown  Close The WebBrowser
*** Variables ***


*** Test Cases ***



TC_002_Verify That The Guest User Is Able To Place Paypal Click And Collect Order With Valid Paypal Credentials

    [documentation]  This script will place the guest user cnc paypal order : Areas Covered [Search,PLP,PDP,Add To Basket,Checkout Now,,Checkout As Guest User,Choose CNC,Choose PAYPAL Payment, Place the order]
    [tags]  Regression

     Search Valid keyword In Search Bar
     Choose Product From PLP Page
     Select The Size And Click Add To Basket Button in PDP Page
     Click Checkout Now Button In Pre Basket Page
     Click Checkout Now Button In Basket Page
     Click Checkout As Guest Link
     Verify Shipping Methods Details
     Choose Home Delivery As A Shipping Method
   #  Pin bar search
     Fill Guest User Address Details
     Choose COD Payment
     Verify Order Summary Details
    # Click Place Order Button
     Give Rating For The Shopping
     Give The What did you like the most option
     Submit The Response in Thankyou Page
    # Close Rating POP-UP Window In Thank You Page
     Click Order Number HyperLink
     Capture Order Number
     Click Cancel Items Link
     Click Select All Product Checkbox
     Choose Cancel Reason
     Click Cancel Button And Cancel The Order