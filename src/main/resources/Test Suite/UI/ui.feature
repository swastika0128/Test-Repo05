@UIFeatures
Feature: UI Testing on Demo Website

  @Smoke
  Scenario: Checking Functionality of Username Filed
    When User navigates to URL 'https://github.com/'
    And  User maximizes the browser window
    And  User scrolls to element 'Demo.Username'
    And  User clicks on element 'Demo.Username'
    And  User enters text 'abc@gmail.com' in input field 'Demo.Username'
    And  User Click on SignUp Button
    Then User verifies the URL of page should be 'https://github.com/signup?source=form-home-signup&user_email='
    Then User closes the browser window

  @Regression
  Scenario: Opening and closing browser
    When User navigates to server 'UAT' with endpoint 'UI.pricing'
    Then User closes the browser window
    New changes made fromvs code
    new changes made from main branch
