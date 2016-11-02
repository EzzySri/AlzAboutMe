Feature: Answering a question as a logged in user
    As a returning user 
    So that I can have correctly answered questions
    I should be able to answer and edit my answer to questions

    Scenario: Answer or edit a fill in the blank question
        Given I am logged in
        Given I am on the menu page
        And I press menu 
        And I click "Personal"
        And I click on a fill in memory card
        And I fill in "memory field" with "my memory here"
        And I click "Save Memory"
        Then I should see "my memory here" 
        Then I should see "Memory Saved"
        
    Scenario: Answer or edit a multiple choice question
        Given I am logged in
        Given I am on the menu page
        And I press menu 
        And I click "Personal"
        And I click on a multiple choice memory card
        And I click "Answer A"
        And I click "Save Memory"
        Then A should be checked
        Then I should see "Memory Saved"
    
    Scenario: Answer or edit a fill in the blank question
        Given I am logged in
        Given I am on the menu page
        And I press menu 
        And I click "Personal"
        And I click fill in memory card
        And I fill in "memory field" with "my memory here"
        And I click "Close"
        Then I should not see "my memory here" 
        Then I should not see "Memory Saved"

    Scenario: Answer or edit a multiple choice question
        Given I am logged in
        Given I am on the menu page
        And I press menu
        And I click "Personal"
        And I click on a multiple choice memory card
        And I click "Answer A"
        And I click "Close"
        Then A should not be checked
        Then I should not see "Memory Saved"
        