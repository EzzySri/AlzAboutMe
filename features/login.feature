Feature: Logging in as a returning user
  
  As a returning user
  So that I can view my profile
  I should be able to log in
  
  Scenario: logging in
    
    Given I have an account
    Given I am on the home page
    And I click on "Login"
    And I fill in "Username" with "username1"
    And I fill in "Password" with "password1"
    And I click on "Log In"
    Then I should be logged in