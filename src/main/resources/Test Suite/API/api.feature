@Features
Feature: API Tests on Demo Website

  @Api
  Scenario: Add/Change and Delete the location in Goggle Maps
    When User sends 'post' request for key 'Demo.FR' for endpoint 'API.post' in json body with server 'GoogleApi'
    And  User stores key 'place_id' from response body
    Then User verifies the status code should be <200>
    Then User verifies the response had key 'scope' with value 'APP'
    Then User verifies the response had key 'id'
    Then User verifies the response had key 'scope' with value of data type 'String'
    Then User verifies the response header had key 'Content-Length' with value '194'
    Then User verifies the response time should be less than <30000>
    When User sends 'put' request for key 'Demo.PR' for endpoint 'API.put' in json body with server 'GoogleApi'
    Then User verifies the status code should be <200>
    When User sends 'delete' request for key 'Demo.SR' for endpoint 'API.delete' in json body with server 'GoogleApi'
    Then User verifies the status code should be <200>

  @Api
  Scenario: Authentication & NonAuthentication Requests
    When User sends 'get' request for key 'Demo.CR' for endpoint 'API.basicAuth' in json body with server 'Postman'
    Then User verifies the status code should be <200>
    changes