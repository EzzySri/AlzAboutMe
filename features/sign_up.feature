Feature: Signing up for a user account
  
  As a new user
  So that I can have an account
  I should be able to sign up
  
  Scenario: go to "Sign Up" page
    Given I am on the home page
    When I click on "Sign Up"
    Then I should be on the "Sign Up" page
  
  Scenario: signing up
    Given I am on the "Sign Up" page
    When I fill in "First Name" with "first"
    And I fill in "Last Name" with "last"
    And I fill in "Username" with "username1"
    And I fill in "Email" with "email@email.com"
    And I fill in "Password" with "password1"
    And I fill in "Confirm Password" with "password1"
    And I click on "Submit"
    Then I should be logged in