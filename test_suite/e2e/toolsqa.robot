*** Settings ***

Documentation        Create ToolsQA Forms
Resource                ../../resource/keyword/key_fill_forms.robot
Suite Setup          Launch Browser
Suite Teardown       Close Browser
*** Test Cases ***

Tools QA Text Box

        Enter Your Name
        Enter You Email ID
        Enter Your Current Address
        Enter Your Permanent Address
        Click Submt button
            