*** Settings ***
library    SeleniumLibrary    
Resource    login_resources.robot

Suite Setup    Open Test Automation Playground
Suite Teardown    Close Browser

Test Template    Invalid Login

*** Keywords ***
Open Test Automation Playground
    Open Browser       ${homepage_playground}    chrome
    Maximize Browser Window
    Click on sign in button homepage

Invalid Login
    [Arguments]    ${username}    ${password}    ${output}
    Input an username    ${username}  
    Input a password    ${password} 
    Click on sign in button
    Sleep    3    seconds 
    Error/succes message should be visible    ${output}
    Sleep    6    seconds
    Delete input data
    Sleep    3    seconds
    

Logout
    Go To                            ${homepage_playground}    
    Click Button                     ${sign_out_button}
    Wait Until Element Is Visible    ${sign_in_button}     

Add product Unusable Security
    Click Element    xpath://mat-card[1]//button


*** Test Cases ***    username        password    output  
Empty user wrong pw   ${EMPTY}        abcd        Username is required  
Right user wrong pw   joosttest       abcd        Username or password incorrect    
Wrong user empty pw   abcd            ${EMPTY}    Password is required
Wrong user right pw   abcd            testww      Username or password incorrect 
  








































