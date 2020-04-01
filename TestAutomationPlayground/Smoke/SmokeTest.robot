*** Settings ***
Library    SeleniumLibrary 
Resource    ../Bibliotheek.robot

Suite Setup    Open Test Automation Playground
Suite Teardown    Close Browser   

*** Variables ***

#logincredentials
${username}                 joosttest
${password}                 testww

*** Keywords ***
Open Test Automation Playground
    Open Browser       ${homepage_playground}    chrome
    Maximize Browser Window

Create new user
    Click Button    ${create_user_button}
    Input Text    ${username_field}    ${username}
    Input Text    ${password_field}    ${password}            
    Click Button    ${sign_up_btn_popup}    

Sign in
    Click Button    ${sign_in_button}
    Input Text    ${username_field}    ${username}
    Input Text    ${password_field}    ${password}            
    Click Button    ${sign_in_btn_popup}
    Wait Until Element Is Visible    ${welcome_lbl}    

Add product Unusable Security
    Click Element    xpath://mat-card[1]//button

Check counter shopping bag
    Element Text Should Be    ${counter_shopping_cart}    1    

Checkout
    Click Button    ${checkout_button}
    Page Should Contain    Credit Card Information        
    
Check for correct product and price on checkout page
    Element Text Should Be    ${first_product_name}    Unusable Security
    Element Should Contain     ${price_first_product}   25.00          
    Element Should Contain    ${total_costs}            30.25     

Fill in Credit Card information
    Input Text    ${first_name}    TestNaam        

Complete order
    Click Button    ${complete_order_btn}    

*** Test Cases ***
SmokeTest
    Sign in
    Add product Unusable Security
    Check counter shopping bag
    Checkout
    Check for correct product and price on checkout page
    Complete order











