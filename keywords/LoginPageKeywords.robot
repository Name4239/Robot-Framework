*** Settings ***
Library         SeleniumLibrary
Resource        CommonKeywords.robot

*** Keywords ***
user login to future skill platform with ${email} and ${firstName} and ${lastName} and ${phoneNumber} and ${newPassword} and ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     xpath=//button[text()="สมัครสมาชิก"]
    CommonKeywords.Wait until element is ready then input text        name=email            ${email}
    CommonKeywords.Wait until element is ready then input text        name=firstName        ${firstName}
    CommonKeywords.Wait until element is ready then input text        name=lastName         ${lastName}
    CommonKeywords.Wait until element is ready then input text        name=phoneNumber      ${phoneNumber}
    CommonKeywords.Wait until element is ready then input text        name=newPassword      ${newPassword} 
    CommonKeywords.Wait until element is ready then input text        name=confirmPassword  ${confirmPassword}
    CommonKeywords.Wait until element is ready then click element     //*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[6]/label/input
    CommonKeywords.Wait until element is ready then click element     //*[@id="__next"]/div[2]/div/div[2]/div/form/div/div[7]/button

   
future skill should display display otp "${expected_message}"
    CommonKeywords.Wait until page contains element then verify text      ${expected_message}  

