# PAYMENT PAGE LOCATORS
# =======================

HomeDelivery = "xpath://h3[text()='Home Delivery']"
CNC = "xpath://h3[normalize-space(text())='Click & Collect']"
COD = "xpath://label[@for='cod-order-input']"
PlaceOrder = "xpath://button[@id='checkout-form-submit004']"
CNCSearchbar = "xpath://div[@class='map-wrapper']//input[@class='search-store-list']"
CNCStoreList = "xpath://div[contains(@class,'shipping-method click-collect-container col-xs-12')]//li[1]"
ViewFullListStores = "xpath://*[@id='checkout-section']/div/div[1]/div[1]/div[1]/div[2]/div[2]/div[3]/div[2]/div[1]/span"

FullName = "id:click-collect-fname-field"
Mobile = "id:click-collect-num-field"
Email = "id:email-field"

#SavedAddress = "xpath://*[@id='select-address-item-1']/span/input"
SavedAddress = "xpath://*[@id='select-address']//div[@class='items select-address-items']/div/span/input"
Shippingmethod="xpath://ul[@class='shipping-tabs']/li"
ClickAndCollectHeading="xpath://ul[@class='shipping-tabs']/li[1]/h3"
HomeDeliveryHeading="xpath://ul[@class='shipping-tabs']/li[2]/h3"
YourOrderSummaryLabel="xpath://div/strong[@id='summary-title']"
SubTotalLabel="xpath://li/strong[@id='shopping-actions-subtotal-title']"
SubTotalAmountText="xpath://li[@id='shopping-actions-total-item']//strong[2]"
StandaradShippingmessgeLabel="xpath://li[normalize-space(@class)='standardInfo']//strong[1]"
StandaradShippingmessgeAmountText="xpath://li[normalize-space(@class)='standardInfo']//strong[2]"
CODLable="xpath://li[@id='shopping-actions-total-item2']//strong[1]"
CODAmountText="xpath://li[@id='shopping-actions-total-item2']//strong[2]"
TotalAmountLabel="xpath://li[@id='shopping-actions-total-price-item']//strong[1]"
TotalAmountText="xpath://li[@id='shopping-actions-total-price-item']//strong[2]"

PinbarSearch="xpath://input[@id='pac-input']"
ConfirmLocation="xpath://fieldset[@id='main-checkout-form-fields']//span[contains(text(),'Confirm Location')]"
BuildingName="xpath://input[@id='address-field-with-map']"
FloorApartment="xpath://input[@id='address2-field-1']"

HdFullname="xpath://fieldset[@id='main-checkout-form-fields']//input[@id='fname-field-with-map']"
HdMobile="xpth://fieldset[@id='main-checkout-form-fields']//input[@id='num-field']"
HdEmail="xpath://input[@id='main-email-field']"

Emirate="xpath://*[@id='main-checkout-form-fields']/div[3]/div[1]/div/span/span[1]"
ShippingCountry="xpath://*[@id='main-checkout-form-fields']/div[3]/div[1]/div/span/div/div/span/span/ul/li[5]/span"
ShippingArea="xpath://*[@id='main-checkout-form-fields']/div[3]/div[2]/div/span/span[1]"
AreaValue="xpath://*[@id='main-checkout-form-fields']/div[3]/div[2]/div/span/div/div/span/span/ul/li[2]/span"

# CARD PAYMENT DETAILS
# ======================

CardNumber = "id:num2-field2"
CVV = "id:cvv-field3"
CardHolderName = "id:ncard2-field13"
# MM = "xpath://form[@id='payment-form']//div[1]/div/span/span[2]"
# YYYY = "xpath://form[@id='payment-form']//div[2]/div/span/span[2]"
# Month = "xpath://span[@class='jcf-list-content']//ul//li[3]"
# Year = "xpath://span[@class='jcf-list-content']//ul//li[3]"

Month = "xpath://li//span[text()='05']"
Year = "xpath://li//span[text()='2025']"
MM = "xpath://span[text()='MM']"
YYYY = "xpath://span[text()='YYYY']"
RegCVV = "xpath://div[@class='tab-content']//input[contains(@id,'cvv-field')]"

ShowAllAddress = "xpath://*[@id='link-show-address']"

# PAYMENT OPTIONS
# =================

Paypal = "xpath://label[@for='paypal-pay-order-input']"

# PAYPAL LOCATORS
# =================

PaypalEmail = "id:email"
PaypalNext = "id:btnNext"
PaypalPassword = "xpath://*[@id='password']"
PaypalLogin = "id:btnLogin"
PaypalConfirmationButton = "id:confirmButtonTop"
