@PerformanceFeature
Feature: Performance Testing on Demo Website

  @constantUserPerSecond
  Scenario: Performance Testing
    When User sets performance testing response time to <700>
    When User sends 'get' request for key 'Demo.CR' at endpoint 'API.basicAuth' with <10> "constant user per second" during <10> seconds for <1> time in 'json' body with name 'Test1' on server 'Postman'
    When User sends 'get' request for key 'Demo.FR' at endpoint 'API.post' with <10> "rampUsers" during <10> seconds for <1> time in 'json' body with name 'Test2' on server 'GoogleApi'
    And User executes the requests with launch name 'constantUserPerSecond'

  @rampUsers
  Scenario: Performance Testing
    When User sets performance testing response time to <700>
    When User sends 'get' request for key 'Demo.CR' at endpoint 'API.basicAuth' with <10> "rampUsers" during <10> seconds for <1> time in 'json' body with name 'Test Request2' on server 'Postman'
    And User executes the requests with launch name 'rampUsers'

  @atOnceUsers
  Scenario: Performance Testing
    When User sets performance testing response time to <700>
    When User sends 'get' request for key 'Demo.CR' at endpoint 'API.basicAuth' with <10> "At once users" during <0> seconds for <1> time in 'json' body with name 'Test Request3' on server 'Postman'
    And User executes the requests with launch name 'atOnceUsers'
      new
     
  @rampUsersPerSecondTo
  Scenario: Performance Testing
    When User sets performance testing response time to <700>
    When User sends 'get' request for key 'Demo.CR' at endpoint 'API.basicAuth' with <10> "rampUsers per second to 25" during <5> seconds for <1> time in 'json' body with name 'Test Request4' on server 'Postman'
    And User executes the requests with launch name 'rampUsersPerSecondTo'