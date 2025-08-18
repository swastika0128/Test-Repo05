@Features
Feature: API Tests

  Scenario: Add/Change
    When User sends 'post' request for key 'Demo.FR' for endpoint 'API.post' in json body with server 'GoogleApi'
    Then User stores key 'place_id' from response body
    Then User verifies the status code should be <200>