*** Settings ***
Library           AppiumLibrary
Library           Collections

*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    10
${DEVICE_NAME}    Galaxy 10
${APP_PACKAGE}    viva.republica.toss
${APP_ACTIVITY}    viva.republica.toss.splash.SplashActivity
${UDID}           192.168.25.185:5555
${APP}            /APPIUM/apk/toss.apk
${NO_RESET}       true

*** Test Cases ***
Open
    Open Stock

*** Keywords ***
Open Stock
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    udid=${UDID}    app=${app}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    noReset=${NO_RESET}
    Sleep    10s
    Click Element    xpath=//android.view.ViewGroup[@content-desc="주식 탭" and @index=3]
    Sleep    2s

Close Android
    Close Application
