Feature: Using the menu as a logged in user
    As a returning user 
    So that I can have correctly answered questions
    I should be able to answer and edit my answer to questions
    
    Scenario: Menu redirect and links
        Given I am logged in
        Given I press menu 
        Then I should see "Personal"
        Then I should see "Historical"
        Then I should see "Favorites"
        Given I click “Personal”
        Then I should be on the “Personal” feed
        And I should see “Personal”
        
    Scenario: Menu button toggle
        Given I am logged in
        Given I press menu 
        And I press menu 
        Then I should not see "Personal"
        Then I should not see "Historical"
        Then I should not see "Favorites"
        
    Scenario: Click Outside to Close Menu         
        Given I am logged in
        Given I press menu 
        And I click outside of the menu
        Then I should not see "Personal"
        Then I should not see "Historical"
        Then I should not see "Favorites"