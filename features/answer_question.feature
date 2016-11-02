Feature: Answering a question as a logged in user
    As a returning user 
    So that I can have correctly answered questions
    I should be able to answer and edit my answer to questions

    Scenario: Successful save when user answers short answer
        Given I am logged in
        Given I am on the menu page
        And I press menu 
        And I click "Personal"
        And I click on a fill in memory card
        And I fill in "memory field" with "my memory here"
        And I click "Save Memory"
        Then I should see "my memory here" 
        Then I should see "Memory Saved"
        
    Scenario: Successful save when user answers multiple choice
        Given I am logged in
        Given I am on the menu page
        And I press menu 
        And I click "Personal"
        And I click on a multiple choice memory card
        And I choose "Answer A"
        And I click "Save Memory"
        Then the A radio button should be selected
        Then I should see "Memory Saved"
    
    Scenario: Don't save when user closes while answering short answer
        Given I am logged in
        Given I am on the menu page
        And I press menu 
        And I click "Personal"
        And I click fill in memory card
        And I fill in "memory field" with "my memory here"
        And I click "Close"
        Then I should not see "my memory here" 
        Then I should not see "Memory Saved"

    Scenario: Don't save when user closes while answering multiple choice
        Given I am logged in
        Given I am on the menu page
        And I press menu
        And I click "Personal"
        And I click on a multiple choice memory card
        And I choose "Answer A"
        And I click "Close"
        Then the A radio button should not be selected
        Then I should not see "Memory Saved"
        