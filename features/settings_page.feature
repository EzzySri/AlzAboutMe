Feature: user settings page

As a user
So that I can view or update my settings
I should have access to my settings

# Scenario: switch "question frameworks"
#     Given I am on the users page
#     And I change password
#     And I change 

Scenario: Change first name
    Given I am logged in
    And I am on the users page
    And I click "Change Name"
    And I fill in "First Name" with "Carlos"
    And I click on "Submit"
    Then I should see "Carlos"

Scenario: Change last name
    Given I am logged in
    And I am on the users page
    And I click "Change Name"
    And I fill in "Last Name" with "Jesus"
    And I click on "Submit"
    Then I should see "Jesus"
    
Scenario: I change password - correct confirmation
    Given I am logged in
    And I am on the users page
    And I click "Change Password"
    And I fill in "New Password" with "newpassword"
    And I fill in "Confirm New Password" with "newpassword"
    And I click on "Submit"
    Then I should see "User was successfully updated."

Scenario: I change password - incorrect confirmation
    Given I am logged in
    And I am on the users page
    And I click "Change Password"
    And I fill in "New Password" with "newpassword"
    And I fill in "Confirm New Password" with "notnewpassword"
    And I click on "Submit"
    Then I should see "New Password Not Confirmed"

Scenario: I change email - new email
    Given I am logged in
    And I am on the users page
    And I click "Change Email"
    And I fill in "Email" with "newemail@email.com"
    And I click on "Submit"
    Then I should see "User was successfully updated."

Scenario: I change username
    Given I am logged in
    And I am on the users page
    And I click "Change Username"
    And I fill in "Username" with "username"
    And I click on "Submit"
    Then I should see "username"