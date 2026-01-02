*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///D:/663380608-3/3-2/SA/Lab/Lab4/TestAutomationLab/StarterFiles/Registration.html
${SUCCESS_FRAGMENT}    Success.html


*** Test Cases ***
Test Scenario ID UAT-Lab04-001: TC1 Open Workshop Registration Page
    [Tags]             Scenario_UAT-Lab04-001
    Open Browser    ${URL}    chrome
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot    TC1_Open_Workshop_Registration_Page.png

Test Scenario ID UAT-Lab04-001: TC2 Register Success
    [Tags]             Scenario_UAT-Lab04-001
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Title Should Be    Success
    Wait Until Location Contains    ${SUCCESS_FRAGMENT}    timeout=10s
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
    Capture Page Screenshot    TC2_Register_Success.png
    Close Browser
