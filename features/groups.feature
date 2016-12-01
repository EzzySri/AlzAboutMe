Feature: Groups
  As a user
  So that I can share my memories
  I want to be able to create and manage groups
  
    # Scenario: Land on groupd page
    #     Given I am logged in
    #     And I click on "Groups"
    #     Then I should see "Groups"
    
    # Scenario: Go Back button works
    #   Given I am logged in
    #   And there exists a group named "Friends"
    #   And I am on the Groups page
    #   Then I click "Friends"
    #   And I click "Go Back"
    #   Then I should see "Groups"
    
    Scenario: Cancel button works
      Given I am logged in
      And there exists a group named "Friends"
      And I am on the Groups page
      Then I click "Friends"
      And I click "Edit"
      And I click "Cancel"
      Then I should see "Groups"
    # Scenario: Create a group
    #     Given I am logged in
    #     And I am on the Groups page
    #     When I click "Create Group"
    #     Then I should see "Group Name:"
    #     When I fill in "Group Name" with "Friends"
    #     And I click "Submit"
    #     Then I should see "Group successfully created"
    #     And I should see "Friends"
    
    # Scenario: Delete a group
    #   Given I am logged in
    #   And there exists a group named "Friends"
    #   And I am on the Groups page
    #   Then I click "Friends"
    #   And I click "Delete Group"
    #   Then I should see "Group successfully deleted"
    #   And I should not see "Friends"
      
    # Scenario: Land on Edit Groups Page
    #   Given I am logged in
    #   And there exists a group named "Friends"
    #   And I am on the Groups page
    #   Then I click "Friends"
    #   And I click "Edit"
    #   Then I should see "Edit Group"
    
    # Scenario: Change Group Name
    #   Given I am logged in
    #   And there exists a group named "Friends"
    #   And I am on the Groups page
    #   Then I click "Friends"
    #   And I click "Edit"
    #   And I fill in "Group Name" with "Amigos"
    #   And I click "Change Name"
    #   Then I should see "Name successfully changed"
    #   And I should see "Amigos"
      
    # Scenario: Add an existing user to group
    #   Given I have an account
    #   And I am logged in
    #   And there exists a group named "Friends"
    #   And I am on the Groups page
    #   Then I click "Friends"
    #   And I click "Edit"
    #   And I fill in "Add New Member" with "username1"
    #   And I click "Add Member"
    #   Then I should see "Member successfully added"
    #   And I should see "username1"
      
    # Scenario: Add a non-existing user to group
    #   Given I have an account
    #   And I am logged in
    #   And there exists a group named "Friends"
    #   And I am on the Groups page
    #   Then I click "Friends"
    #   And I click "Edit"
    #   And I fill in "Add New Member" with "fakeUser"
    #   And I click "Add Member"
    #   Then I should see "Username does not exist, cannot add to member to group"
    #   And I should not see "fakeUser"
      
    # Scenario: Add a user twice to a group
    #   Given I have an account
    #   And I am logged in
    #   And there exists a group named "Friends"
    #   And I am on the Groups page
    #   Then I click "Friends"
    #   And I click "Edit"
    #   And I fill in "Add New Member" with "username1"
    #   And I click "Add Member"
    #   And I fill in "Add New Member" with "username1"
    #   And I click "Add Member"
    #   Then I should see "User is already a member of this group"
    # Scenario: Remove a member
    #   Given I have an account
    #   And I am logged in
    #   And there exists a group named "Friends"
    #   And I am on the Groups page
    #   Then I click "Friends"
    #   And I click "Edit"
    #   And I fill in "Add New Member" with "username1"
    #   And I click "Add Member"
    #   And I click "Remove username1"

    
  