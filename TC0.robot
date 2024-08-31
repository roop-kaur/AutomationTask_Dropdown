*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}        https://circula-qa-challange.vercel.app/users/sign_up

*** Test Cases ***
Open Website in Chrome
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    10s
    [Teardown]    Close Browser




