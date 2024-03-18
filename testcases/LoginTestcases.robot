*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/LoginPageKeywords.robot
Variables       ../resources/config/config.yaml
Suite Setup        Open Browser    ${baseUrl}    chrome
Suite Teardown     Close Browser


*** Test Cases ***
 I want to register 
    ${email}    Set Variable    l@hotmail.com
    ${firstName}    Set Variable    pobpa
    ${lastName}    Set Variable    bunya
    ${phoneNumber}    Set Variable    0900125666116
    ${newPassword}    Set Variable    N
    ${confirmPassword}    Set Variable    N
    ${expected_message}    Set Variable    ระบบได้ส่งรหัส OTP ไปยังเบอรโ์ทรศัพท์
    When user login to future skill platform with ${email} and ${firstName} and ${lastName} and ${phoneNumber} and ${newPassword} and ${confirmPassword} 
    then future skill should display display otp "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์" 
    
    

    
