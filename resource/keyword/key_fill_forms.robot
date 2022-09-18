*** Settings ***

Library     SeleniumLibrary
Library     FakerLibrary
Resource    ../configuration/launch_brow.robot
Resource    ../../page_object/po_login.robot


*** Keywords ***

Enter Your Name
        
        
        SeleniumLibrary.Wait Until Element Is Visible   ${userNameInputField}    30s
        ${name}=        FakerLibrary.Name
        SeleniumLibrary.Input Text    ${userNameInputField}      ${name}

Enter You Email ID
        
        SeleniumLibrary.Wait Until Element Is Visible    ${userEmailInputFField}    30s
        ${emailId}=    FakerLibrary.Email
        SeleniumLibrary.Input Text    ${userEmailInputFField}    ${emailId}

Enter Your Current Address
        
        SeleniumLibrary.Wait Until Element Is Visible    ${currentAddressInputFiield}    30s
        ${currentAddress}=    FakerLibrary.Address
        SeleniumLibrary.Input Text    ${currentAddressInputFiield}    ${currentAddress}

Enter Your Permanent Address
        
        SeleniumLibrary.Scroll Element Into View    ${submitButton}
        SeleniumLibrary.Wait Until Element Is Visible    ${permanentAddressInputField}   30s    
        ${permanentAddress}=    FakerLibrary.Address
        SeleniumLibrary.Input Text    ${permanentAddressInputField}    ${permanentAddress}

Click Submt button
        
        # SeleniumLibrary.Select Frame   //iframe[@id="google_ads_iframe_/21849154601,22343295815/Ad.Plus-Anchor_0"]
        SeleniumLibrary.Wait Until Element Is Visible    //div[@class="text-right col-md-2 col-sm-12"]
        SeleniumLibrary.Click Element    ${submitButton}
        