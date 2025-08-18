@AccessibilityFeatures
Feature: Accessibility Testing on Demo Website

  @CompletePageCheck
  Scenario: Check issues related to Accessibility1
    When User navigates to URL 'https://google.com/' for accessibility testing
    And  User maximizes the browser window
    And  User checks for any accessibility issue of 'Google Landing page'
    Then User closes the browser window

  @ExcludingRules
  Scenario: Check issues related to Accessibility2
    When User navigates to URL 'https://google.com/' for accessibility testing
    And  User maximizes the browser window
    And  User checks for accessibility issues of 'Landing page ExcludingRules' by excluding following rules "color-contrast,duplicate-id"
    Then User closes the browser window

  @ExcludingElement
  Scenario: Check issues related to Accessibility3
    When User navigates to URL 'https://google.com/' for accessibility testing
    And  User maximizes the browser window
    And  User checks for accessibility issues of 'Landing page ExcludingElement' by excluding this element "#APjFqb"
    Then User closes the browser window

  @withOnlyElement
  Scenario: Check issues related to Accessibility2
    When User navigates to URL 'https://google.com/' for accessibility testing
    And  User maximizes the browser window
    And  User checks for accessibility issues of 'Landing page withOnlyElement' with only element "#APjFqb"
    Then User closes the browser window

  @withOnlyRules
  Scenario: Checking for custom issues with specific rules
    When User navigates to URL 'https://google.com/' for accessibility testing
    When User checks for accessibility issues of 'Landing page withOnlyRules' with only rules 'duplicate-id'
    Then User closes the browser window

  @ExcludingElements
  Scenario: Check issues related to Accessibility2
    When User navigates to URL 'https://google.com/' for accessibility testing
    And  User maximizes the browser window
    And  User checks for accessibility issues of 'Landing page ExcludingElements' by excluding following elements ".ayzqOc,#APjFqb"
    Then User closes the browser window
