Feature: Sharing among groups
  
  As a user
  So that I can share individual memories with my groups

  
  Scenario: share with my groups
    # Given I am logged in
    # Given a short answer MemoryCard exists
    # Given I am on the memory card page
    Given an admin account exists 
    Given I signed in as an admin
    Given a short answer MemoryCard exists
    And I click on "All Categories"
    Then I should see "Factory Question"
    Then I should see "Update Memory"
    
  
  
