*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Chrome Browser with Amazon Link
    [Arguments]  ${browser}
    Open Browser  https://www.amazon.in/  ${browser}
    Wait Until Page Contains   Your Amazon.in
Search Text in Chrome Browser
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  Xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait until Page Contains  results for "Ferrari 458"
Image Selection
    Click Image  Xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[1]/div/div/span/a/div/img
    Wait Until Page Contains  Your Amazon.in
Add to Cart enable
    Click Button  Xpath=//*[@id="add-to-cart-button"]
    Wait until Page Contains  Added to Cart