
Feature: Admin 
    As an admin
    So that I can create or update questions
    I should have be given this option

Scenario: Admin adds question
    Given I signed in as an admin
    Then I should see "Add Questions"
    Given I click on "Add Questions"
    And I fill in new_question with "New Question here"
    And I click Submit 
    Then I should see "new question added successfully"

Scenario: Admin deletes a question
    Given I signed in as an admin
    Then I should see "Delete Questions"
    Given I click on "Delete Questions"
    And I click on checkbox_1 
    And I click "Delete"
    Then I should see "Are you sure you want to delete?"
    And I click "yes"
    Then I should see "question deleted successfully"