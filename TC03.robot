*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://circula-qa-challange.vercel.app/users/sign_up
${DROPDOWN}    name=country   # Adjust this to the actual ID or locator of the dropdown
${ACCEPT_BUTTON}    xpath=//*[@id="uc-center-container"]/div[2]/div/div/div/button[3]  # Adjust this to the actual locator of the accept button
${GOOGLE_SELECTION}    xpath=//*[@id="button"]/div[1]
${GOOGLE_SETTINGS_DEFAULT}    xpath=//*[@id="actionButton"]
${SIGNUP}    xpath=//*[@id="signup-form"]/div[7]/button
*** Test Cases ***
Verify Sweden Can Be Selected and Form Can Be Submitted
    Open Browser    ${URL}    ${BROWSER}
    Select From List By Label    ${DROPDOWN}    Sweden
    ${selected_value}=    Get Selected Label    ${DROPDOWN}
    Should Be Equal    ${selected_value}    Sweden
    # Assuming there’s a submit button with the locator "id=submit"
    Click Button    ${SIGNUP}
    # Verify the form submission by checking for a success message or redirection
    Page Should Contain    You made it!
    Close Browser