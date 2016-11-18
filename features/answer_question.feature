# Feature: Answering a question as a logged in user
#     As a returning user 
#     So that I can have correctly answered questions
#     I should be able to answer and edit my answer to questions

#     Scenario: Answer or edit a fill in the blank question
#         Given I am logged in
#         Given a short answer MemoryCard exists
#         And I am on the memory card page
#         And I click on a short answer memory card
#         And I fill in "memory field" with "my memory here"
#         And I click on "Save Memory"
#         Then I should see "my memory here"
        
#     Scenario: Answer or edit a multiple choice question
#         Given I am logged in
#         Given a multiple choice MemoryCard exists
#         And I am on the memory card page
#         And I click on "A"
#         And I click on "Save Memory"
#         Then I should see "You Chose: A"
    
#     Scenario: Answer or edit a fill in the blank question
#         Given I am logged in
#         Given a short answer MemoryCard exists
#         And I am on the memory card page
#         And I click on "Personal"
#         And I click on a short answer memory card
#         And I fill in "memory field" with "my memory here"
#         And I click on "Cancel"
#         Then I should not see "my memory here"

#     Scenario: Answer or edit a multiple choice question
#         Given I am logged in
#         Given a multiple choice MemoryCard exists
#         And I am on the memory card page
#         And I click on a multiple choice memory card
#         And I click on "Answer A"
#         And I click on "Cancel"
#         Then I should not see "You Chose: A"
        