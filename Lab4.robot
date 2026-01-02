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

Test Scenario ID UAT-Lab04-001: TC3 Open Workshop Registration Page
    [Tags]             Scenario_UAT-Lab04-001
    Open Browser    ${URL}    chrome
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot    TC3_Open_Workshop_Registration_Page.png

Test Scenario ID UAT-Lab04-001: TC4 Register Success No Organization Info
    [Tags]             Scenario_UAT-Lab04-001
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Title Should Be    Success
    Wait Until Location Contains    ${SUCCESS_FRAGMENT}    timeout=10s
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
    Capture Page Screenshot    TC4_SuccessWithoutOrganization.png
    Close Browser

Test Scenario ID UAT-Lab04-002: TC5 Open Workshop Registration Page
    [Tags]             Scenario_UAT-Lab04-002
    Open Browser    ${URL}    chrome
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot    TC5_Open_Workshop_Registration_Page.png

Test Scenario ID UAT-Lab04-002: TC6 Empty First Name
    [Tags]             Scenario_UAT-Lab04-002
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Page Should Contain    Please enter your first name!!
    Capture Page Screenshot    TC6_EmptyFirstname.png
    Close Browser

Test Scenario ID UAT-Lab04-002: TC7 Open Workshop Registration Page
    [Tags]             Scenario_UAT-Lab04-002
    Open Browser    ${URL}    chrome
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot    TC7_Open_Workshop_Registration_Page.png

Test Scenario ID UAT-Lab04-002: TC8 Empty Last Name
    [Tags]             Scenario_UAT-Lab04-002
    Input Text    firstname    Somyod
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Page Should Contain    Please enter your last name!!
    Capture Page Screenshot    TC8_EmptyLastname.png
    Close Browser

Test Scenario ID UAT-Lab04-002: TC9 Open Workshop Registration Page
    [Tags]             Scenario_UAT-Lab04-002
    Open Browser    ${URL}    chrome
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot    TC9_Open_Workshop_Registration_Page.png

Test Scenario ID UAT-Lab04-002: TC10 Empty First And Last Name
    [Tags]             Scenario_UAT-Lab04-002
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Page Should Contain    Please enter your name!!
    Capture Page Screenshot    TC10_EmptyName.png
    Close Browser

Test Scenario ID UAT-Lab04-002: TC11 Empty Email
    [Tags]             Scenario_UAT-Lab04-002
    Open Browser    ${URL}    chrome
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Page Should Contain    Please enter your email!!
    Capture Page Screenshot    TC11_EmptyEmail.png
    Close Browser

Test Scenario ID UAT-Lab04-002: TC12 Open Workshop Registration Page
    [Tags]             Scenario_UAT-Lab04-002
    Open Browser    ${URL}    chrome
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot    TC12_Open_Workshop_Registration_Page.png

Test Scenario ID UAT-Lab04-002: TC13 Empty Phone Number
    [Tags]             Scenario_UAT-Lab04-002
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Click Button    registerButton
    Page Should Contain    Please enter your phone number!!
    Capture Page Screenshot    TC13_EmptyPhone.png
    Close Browser

Test Scenario ID UAT-Lab04-002: TC14 Open Workshop Registration Page
    [Tags]             Scenario_UAT-Lab04-002
    Open Browser    ${URL}    chrome
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot    TC14_Open_Workshop_Registration_Page.png

Test Scenario ID UAT-Lab04-002: TC15 Invalid Phone Number
    [Tags]             Scenario_UAT-Lab04-002
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    1234
    Capture Page Screenshot    TC15-1_RegisterInvalidPhone.png
    Click Button    registerButton
    Capture Page Screenshot    TC15-2_InvalidPhone.png
    Page Should Contain    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678)
    Close Browser
