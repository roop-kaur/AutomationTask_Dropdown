*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://yourwebsite.com/signup
${DROPDOWN}   id=country-dropdown   # Adjust this to the actual ID or locator of the dropdown

*** Test Cases ***
Verify Sweden Is in the Country Dropdown
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    10s
    Select From List By Label    ${DROPDOWN}    Sweden
    Element Should Contain    ${DROPDOWN}    Sweden
    Close Browser