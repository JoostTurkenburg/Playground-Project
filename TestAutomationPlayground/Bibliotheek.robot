*** Variables ***
#Homepage
${homepage_playground}      http://testautomationplayground.northeurope.cloudapp.azure.com:8080/
${create_user_button}       xpath://button[contains(.,'Create user')]
${sign_in_button}           xpath://app-product-list//button[contains(.,'Sign in')]
${sign_out_button}          xpath://app-product-list//button[contains(.,'Sign out')]     
${checkout_button}          xpath://button[contains(.,'Checkout')]
${counter_shopping_cart}    xpath://app-product-list//div[@class='cartDigit']
${close_message_login}      xpath://button[contains(.,'close')]
${welcome_lbl}              xpath://span[contains(.,'Welcome!')]

#Sign in/up pop up
${username_field}           xpath://input[@formcontrolname='username']
${password_field}           xpath://input[@formcontrolname='password']
${sign_up_btn_popup}        xpath://button[contains(.,'Sign up')]
${sign_in_btn_popup}        xpath://app-sign-in-or-up-dialog//button[contains(.,'Sign in')]

#Checkout page
${continue_shopping_btn}    xpath://button[contains(.,'Continue Shopping')]
${complete_order_btn}       xpath://button[contains(.,'Complete Order')]
${productsection}           xpath://app-checkout//div[@class='productSection']
${subtotal}                 xpath://app-checkout//div[@class='totalDetails']/div[contains(.,'subtotal')]
${shipping_costs}           xpath://app-checkout//div[@class='totalDetails']/div[contains(.,'shipping')]
${taxes}                    xpath://app-checkout//div[@class='totalDetails']/div[contains(.,'taxes')]
${total_costs}              xpath://app-checkout//div[@class='totalFinal']
${first_product_name}       xpath://app-checkout//div[@class='productSection']/div[1]/div[@class='columnCenter']/div[1]
${sec_product_name}         xpath://app-checkout//div[@class='productSection']/div[2]/div[@class='columnCenter']/div[1]
${price_first_product}      xpath://app-checkout//div[@class='productSection']/div[1]/div[@class='columnRight']

${first_name}               xpath://input[@formcontrolname='firstName']
