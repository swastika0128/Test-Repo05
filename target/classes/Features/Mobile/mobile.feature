@Features
Feature: Testing Mobile Methods of Stellar

  @Android
  Scenario: Run sample test case on Android
    When User sets desired capabilities with key 'Appium.androidMobile' in mobile
    And  User waits until element 'Appium.text' is visible in mobile
    And  User verifies the element 'Appium.text' is visible in mobile
    And  User long presses on element 'Appium.text' in mobile
    And  User taps on element 'Appium.text' in mobile
    And  User enters text 'asadRaza' in input field 'Appium.text' in mobile
    And  User clicks on element 'Appium.female' in mobile
    And  User clicks on element 'Appium.country' in mobile
    And  User scrolls to element 'Austria' in native view in mobile
    And  User clicks on element 'Appium.Austria' in mobile
    And  User navigates back in mobile
    And  User clicks on element 'Appium.LetsShop' in mobile
    And  User closes the session in mobile

  @iOS
  Scenario: Run sample test case on Ios
    When User sets desired capabilities with key 'Appium.iosMobile' in mobile
    And  User waits until element 'Appium.ios_home_img' is visible in mobile
    And  User verifies the element 'Appium.ios_home_img' is visible in mobile
    Then User waits until element 'Appium.ios_login_page' is visible in mobile
    And  User clicks on element 'Appium.ios_login_page' in mobile
    Then User waits until element 'Appium.ios_login_text' is visible in mobile
    And  User verifies the element 'Appium.ios_login_text' is visible in mobile
    And  User waits for <1000> milliseconds in mobile
    And  User closes the session in mobile