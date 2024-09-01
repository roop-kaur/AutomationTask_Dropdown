*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://circula-qa-challange.vercel.app/users/sign_up
${DROPDOWN}    name=country

*** Test Cases ***
Verify All Expected Countries Are Present in the Dropdown
    Open Browser    ${URL}    ${BROWSER}
    ${options}=    Get List Items    ${DROPDOWN}
    List Should Contain Value    ${options}    Sweden
    List Should Contain Value    ${options}    United States
    List Should Contain Value    ${options}    United Kingdom
    List Should Contain Value    ${options}    Germany
    # Add checks for all other expected countries
    Close Browser