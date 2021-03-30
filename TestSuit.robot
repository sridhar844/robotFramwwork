*** Settings ***
Library    SeleniumLibrary  

*** Test Cases ***
MyFirstTest
    LOg     Hello World...
    
FirstSeleniumTest
    Open Browser    https://dev-api.iempowernow.com/b/login-business   chrome
    Maximize Browser Window
    Click Element   xpath=//span[contains(text() , 'Country Code *')]
    Click Element   xpath=//span[contains(text() , ' India +91 ')]     
    Input Text      name=mentor_phone                                    9704017543  
    Click Button    name = Submit
    Sleep    4s        
    Input Password  name=verifyCode    1234   
    Click Button    xpath=//button[@name = 'Verify']
    Sleep    4s 
    Click Button    xpath=//button[contains(text() , ' Request Bot Assessment ')]
    Input Text      name=userName    sridhar
    Input Text      name=email       sridhar@skil.ai
    Sleep    4s 
    Click Element   xpath=//span[contains(text() , 'Country Code *')]
    Click Element   xpath=//span[contains(text() , ' India +91 ')]  
    Sleep    4s 
    Input Text      name=mentor_phone   8919425159
    Choose File     xpath=//input[@id = 'fileControl1']    C:\\Users\\Sridhar\\Documents\\Test.txt
    Sleep    4s 
    Input Text      xpath=//input[@placeholder = 'Core Technologies To Assess*']    java
    Sleep    4s 
    Click Element   xpath=//span[contains(text() , ' java ')]   
    Sleep    4s      
    Click Button    xpath=//button[contains(text() , 'Lisa, Build Question Set For Me ')]
    Sleep    6s 
    Log             Test Completed
    Close Browser                          