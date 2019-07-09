@Search
Feature: Search Bar
  As a User
  I would like to search Google
  So that I may find search results

  Background: 
    Given I visit Google's homepage

  Scenario: The homepage loads
    Then Google's homepage loads

  Scenario: Search results load
    When I input "cats" into the search Bar
    And I tap Google Search
    Then Search results for "cats" load