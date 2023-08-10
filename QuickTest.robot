*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Quick Test
    Open Browser    http://inv.beaufortfairmont.com/    Chrome    
    Comment    Verify that the text "Invoice Manager" is on the page
    Page Should Contain    Invoide Manager
