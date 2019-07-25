*** Settings ***
Documentation  "Test browsers"
Resource  Resources/OpeningBrowser.robot
Resource  Resources/ClosingBrowser.robot
Library  SeleniumLibrary

*** Variables ***
${BROWSER} =  Chrome

*** Test Cases ***
Test browser open close
    [Documentation]  "This is a test for opening and closing amazon site"
    [Tags]  tag1
    Open Chrome Browser with Amazon Link   ${BROWSER}
    Sleep  2s
    Close Chrome Browser

Test case to search product in amazon
    [Documentation]   This is a test for opening browser and search product
    [Tags]   tag2
    Open Chrome Browser with Amazon Link   ${BROWSER}
    Search Text in Chrome Browser
    Close Chrome Browser

Test case to add the product to cart
    [Documentation]  This is to add the item to cart
    [Tags]   tag3
    Open Chrome Browser with Amazon Link   ${BROWSER}
    Search Text in Chrome Browser
    Image Selection
    Select Window  New
    Add to Cart enable
    Close Chrome Browser

Test Case to check user is logged in or not
    [Documentation]  This to check the user is logged in or not
    [Tags]  tag4
    Open Chrome Browser with Amazon Link   ${BROWSER}
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  Xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Image  Xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[1]/div/div/span/a/div/img
    Wait Until Page Contains  Your Amazon.in
    Select Window  New
    Click Button  Xpath=//*[@id="add-to-cart-button"]
    Wait until Page Contains  Added to Cart

    Close Browser



