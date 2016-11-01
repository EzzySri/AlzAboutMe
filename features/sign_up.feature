Feature: Signing up for a user account
  
  As a new user
  So that I can have an account
  I should be able to sign up
  
  Scenario: go to "Sign Up" page
    
    Given I am on the home page
    When I click on "Sign Up"
    Then I should be on the "Sign Up" page
  
  Scenario: signing up w/ all fields filled in
    
    Given I am on the "Sign Up" page
    When I fill in "First Name" with "first"
    And I fill in "Last Name" with "last"
    And I fill in "Username" with "username1"
    And I fill in "Email" with "email@email.com"
    And I fill in "Password" with "password1"
    And I fill in "Confirm Password" with "password1"
    And I click on "Submit"
    Then I should be logged in
    
  Scenario: signing up w/ existing username
    Given I have an account
    And I am on the "Sign Up" page
    When I fill in "First Name" with "first"
    And I fill in "Last Name" with "last"
    And I fill in "Username" with "username1"
    And I fill in "Email" with "email@email.com"
    And I fill in "Password" with "password1"
    And I fill in "Confirm Password" with "password1"
    And I click on "Submit"
    Then I should see "Username already exists"
  
  Scenario: signing up w/ already used email
    Given I have an account
    And I am on the "Sign Up" page
    When I fill in "First Name" with "first"
    And I fill in "Last Name" with "last"
    And I fill in "Username" with "differentUsername"
    And I fill in "Email" with "email@email.com"
    And I fill in "Password" with "password1"
    And I fill in "Confirm Password" with "password1"
    And I click on "Submit"
    Then I should see "email is associated with an existing user"
    
  Scenario: signing up w/ passwords not matching up
    And I am on the "Sign Up" page
    When I fill in "First Name" with "first"
    And I fill in "Last Name" with "last"
    And I fill in "Username" with "username1"
    And I fill in "Email" with "email@email.com"
    And I fill in "Password" with "password1"
    And I fill in "Confirm Password" with "password2"
    And I click on "Submit"
    Then I should see "Password confirmation did not match password"
    
  Scenario: signing up w/ missing field(s)
    Given I am on the "Sign Up" page
    When I click on "Submit"
    Then I should see "All fields are required"
    
  Scenario: inputs persists if sign-up fails
    Given I am on the "Sign Up" page
    When I fill in "First Name" with "Spongebob"
    And I click on "Submit"
    Then I should see "Spongebob"