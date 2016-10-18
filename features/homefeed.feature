Feature: Logging in as a returning user
    As a returning user 
    So that I can add a memory
    I should be able to add a new memory

    Scenario: basic homefeed add memory
        Given I am on the homefeed page
        And I fill in the memory box with "my memory here"
        And I click "Update Memory"
        Then I should see "my memory here" 
        Then I should see "memory added"