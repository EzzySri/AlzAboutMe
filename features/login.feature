Feature: Logging in as a returning user
  
  As a returning user
  So that I can view my profile
  I should be able to log in
  
  Scenario: Go to "Login" page
    
    Given I am on the home page
    And I click on "Login"
    Then I should be on the "Login" page
    
  Scenario: logging in w/ correct credentials
    
    Given I have an account
    And I am on the home page
    When I click on "Login"
    And I fill in "Username" with "username1"
    And I fill in "Password" with "password1"
    And I click on "Log In"
    Then I should be logged in
  
  Scenario: logging in w/ non-existing username
    
    Given I am on the home page
    And I click on "Login"
    And I fill in "Username" with "notARealUsername"
    And I fill in "Password" with "notARealPassword"
    And I click on "Log In"
    Then I should see "Incorrect Username or Password"
    
  Scenario: logging in w/ incorrect password
    
    Given I have an account
    Given I am on the home page
    And I click on "Login"
    And I fill in "Username" with "username1"
    And I fill in "Password" with "notARealPassword"
    And I click on "Log In"
    Then I should see "Incorrect Username or Password"