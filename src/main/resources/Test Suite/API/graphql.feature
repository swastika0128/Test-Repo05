@Features
Feature: API Tests on Demo Website

  @Query
  Scenario: Use query operation to fetch data from GraphQL with AllBooks server
    When User sends 'query' GraphQL request in file 'AllBooks' with name 'fetchAllBooks' for endpoint "https://katalon-sample-graphql-aut.herokuapp.com/graphql"
    And User verifies the status code should be <200>
    And User verifies the response had key 'id'
    And User verifies the response had key 'author'
    And User verifies the response had key 'firstName'
    And User verifies the response had key 'lastName'
    And User verifies the response had key 'data.findAllBooks[0].id' with value <1>
    And User verifies the response had key 'data.findAllBooks[0].pageCount' with value <454>
    And User verifies the response had key 'data.findAllBooks[0].author.firstName' with value 'Chien'
    And User stores key 'data.findAllBooks[0].id' from response body
      new changes


  @Mutation @DelBook
  Scenario: Use mutation property in GraphQL to perform CRUD operation
    When User sends 'query' GraphQL request in file 'AllBooks' with name 'fetchAllBooks' for endpoint "https://katalon-sample-graphql-aut.herokuapp.com/graphql"
    And  User verifies the status code should be <200>
    When User creates GraphQL variable with key 'delBook' and value '2'
    When User sends 'mutation' GraphQL request in file 'AllBooks' with name 'DelBook' for endpoint "https://katalon-sample-graphql-aut.herokuapp.com/graphql"
    When User sends 'query' GraphQL request in file 'AllBooks' with name 'fetchAllBooks' for endpoint "https://katalon-sample-graphql-aut.herokuapp.com/graphql"


  @QueryInFeatureFile
  Scenario: Testing inline query using feature file of allbooks APIs
    When User sends GraphQL request 'query fetchAllBooks { findAllBooks { id title isbn pageCount author {  id firstName lastName } } }' for endpoint 'https://katalon-sample-graphql-aut.herokuapp.com/graphql'
    And User verifies the response had key 'id'
    And User verifies the response had key 'author'
    And User verifies the response had key 'firstName'
    And User verifies the response had key 'lastName'
    And User verifies the response had key 'data.findAllBooks[0].id' with value <1>
    And User verifies the response had key 'data.findAllBooks[0].pageCount' with value <454>

  @Fragments
  Scenario: Testing fragments of allbooks APIs
    When User sends 'query' GraphQL request in file 'Countries_Fragments' with name 'fetchAllBooks' for endpoint "https://katalon-sample-graphql-aut.herokuapp.com/graphql"
    And User verifies the response had key 'id'
    And User verifies the response had key 'author'
    And User verifies the response had key 'firstName'
    And User verifies the response had key 'lastName'
    And User verifies the response had key 'data.findAllBooks[0].id' with value <1>
    And User verifies the response had key 'data.findAllBooks[0].pageCount' with value <454>
    And User verifies the response had key 'data.findAllBooks[0].author.firstName' with value 'Chien'