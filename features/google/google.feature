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
    When I input "dogs" into the search bar
    And I tap Google Search
    Then Search results for "dogs" load

  Scenario: I'm Feeling Lucky results
    When I input "dogs" into the search bar
    And I tap I'm Feeling Lucky
    Then I no longer see the Google Home Page