*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://circula-qa-challange.vercel.app/users/sign_up
${DROPDOWN}    name=country   # Adjust this to the actual ID or locator of the dropdown
${ACCEPT_BUTTON}    xpath=//*[@id="uc-center-container"]/div[2]/div/div/div/button[3]  # Adjust this to the actual locator of the accept button
${GOOGLE_SELECTION}    xpath=//*[@id="choiceList"]/cr-radio-button[5]/div/div[2]/div[1]
${SET_AS_DEFAULT}    xpath=//*[@id="actionButton"]

*** Test Cases ***
Verify Sweden Is in the Country Dropdown
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    10s
    # Select the radio button
    Wait Until Element Is Visible    ${GOOGLE_SELECTION}    timeout=15s
    Click Element    ${GOOGLE_SELECTION}
    # Click on the "Set as Default" button
    Wait Until Element Is Visible    ${SET_AS_DEFAULT}    timeout=15s
    Click Element    ${SET_AS_DEFAULT}
    # Handle the Terms and Conditions pop-up
    Wait Until Element Is Visible    ${ACCEPT_BUTTON}    timeout=15s
    Click Button    ${ACCEPT_BUTTON}
    Sleep    2s  # Wait for the pop-up to disappear
    Select From List By Label    ${DROPDOWN}    Sweden
    Element Should Contain    ${DROPDOWN}    Sweden
    Close Browser