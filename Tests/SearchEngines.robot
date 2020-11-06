*** Settings ***
Library    SeleniumLibrary

Resource    ../Resources/Common.robot

Documentation    Это пример теста написанного с помощью Robot Framework

Test Setup    Open Browser    NONE    ${BROWSER}
Test Teardown    Close Browser


*** Variables ***
# C переменными уже можно работать через опцию -v
${BROWSER}    chrome
${REQUEST}    Привет


*** Test Cases ***
Check Search Engines Requests
    FOR    ${ENGINE}    ${SEARCH_FIELD}    IN    &{SEARCH_ENGINES}
        Run Keyword And Continue On Failure	    Check Search Engine    ${ENGINE}    ${SEARCH_FIELD}    ${REQUEST}
    END
