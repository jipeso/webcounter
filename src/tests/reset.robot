*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter has nonzero value and it is reset value becomes zero
    Go To  ${HOME_URL}
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
    Click Button  Paina
    Page Should Contain  nappia painettu 1 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa