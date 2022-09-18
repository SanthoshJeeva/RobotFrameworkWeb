*** Settings ***

Documentation       Core
Library       SeleniumLibrary

*** Variables ***

${path}      /home/santhosh/Documents/driver/chromedriver
${link}      https://demoqa.com/text-box

*** Keywords  ***

Launch Browser

        SeleniumLibrary.Create Webdriver    Chrome    executable_path=${path}
        SeleniumLibrary.Go To       ${link}
        SeleniumLibrary.Maximize Browser Window





