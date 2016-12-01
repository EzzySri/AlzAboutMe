Feature: Groups
  As a user
  So that I can share my memories
  I want to be able to create and manage groups
  
    Scenario: Land on groupd page
        Given I am logged in
        And I click on "Groups"
        Then I should see "Groups"
    
    Scenario: Create a group
        Given I am on logged in
        And I am on the "Groups Page"
        When I click on "Create Group"
        Then I should see "Group Name:"
        When I fill in "Group Name:" with "Friends"
        And I click on "Submit"
        Then I should see "Group Successfully Created"
        And I should see "Friends"
    
  