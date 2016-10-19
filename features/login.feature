Feature: Logging in as a returning user
  
  As a returning user
  So that I can view my profile
  I should be able to log in
  
  Scenario: logging in
    
    Given I have an account
    Given I'm on the home page
    When I type in my username
    And I type in my password
    When I click "Log In"
    Then I should be logged in