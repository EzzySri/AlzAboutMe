Feature: Signing up for a user account
  
  As a new user
  So that I can have an account
  I should be able to sign up
  
  Scenario: go to "Sign Up" page
    Given I'm on the home page
    When I click on "Sign Up"
    Then I should be on the "Sign Up" page
  
  Scenario: signing up
    Given I'm on the "Sign Up" page
    When I input my first name
    And I input my last name 
    And I input my username
    And I input my password
    And I confirm my password
    And I click on "Submit"
    Then I should be logged in