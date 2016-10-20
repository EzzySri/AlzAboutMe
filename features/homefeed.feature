Feature: Logging in as a returning user
    As a returning user 
    So that I can add a memory
    I should be able to add a new memory

    Scenario: basic homefeed add memory
        Given I am logged in
        And I fill in "memory field" with "my memory here"
        And I click on "Update Memory"
        Then I should see "my memory here" 
        Then I should see "memory was successfully edited"