Feature: user settings page

As a user
So that I can view or update my settings
I should have access to my settings

Scenario: switch "question frameworks"
    Given I am on the users page
    And I change password
    And I change 

Scenario: I change password
    Given I am on the users page
    And I click edit information
    And I fill in new_password with "new password"
    And I click Submit
    Then I should see "credentials updated"

Scenario: I change email to an email that is already taken
    Given I am on the users page
    And I click edit information
    And I fill in new_email with "email@email.com"
    And I click Submit
    Then I should see "email is already taken"

Scenario: I change email to an email that is not already taken
    Given I am on the users page
    And I click edit information
    And I fill in new_email with "newemail@email.com"
    And I click Submit
    Then I should see "credentials updated"



