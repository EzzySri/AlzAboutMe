Feature: Answering a question as a logged in user
    As a returning user 
    So that I can have correctly answered questions
    I should be able to answer and edit my answer to questions

    Scenario: Successful save when user answers short answer
        Given I am logged in
        Given I am on the memory card page
        And I click on a fill in memory card
        And I fill in "memory field" with "my memory here"
        And I click on "Save Memory"
        Then I should see "my memory here" 
        Then I should see "Memory Saved"
  
        