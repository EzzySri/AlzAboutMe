Feature: Sharing among groups
  
  As a user
  So that I can share individual memories with my groups

  
  Scenario: share with my groups
    Given I am logged in
    Given a short answer MemoryCard exists
    Given I am on the memory card page
    Then I should see "Q"
  
