*** Settings ***
Library    SeleniumLibrary    
Resource    ../Bibliotheek.robot

*** Keywords ***

Click on sign in button homepage
    Click Button    ${sign_in_button}    

Input an username
    [Arguments]    ${username}
    Input Text     ${username_field}    ${username}

Input a password
    [Arguments]    ${password}
    Input Text     ${password_field}    ${password}

Click on sign in button
    Click Button                     ${sign_in_btn_popup}

Delete input data
    Clear Element Text    ${username_field}
    Clear Element Text    ${password_field}

Close error message
    Click Button    ${close_message_login}    

Check if you signed in succesfully
    Wait Until Element Is Visible    ${sign_out_button}    

Error/succes message should be visible
    [Arguments]    ${output}
    Page Should Contain    ${output}   

