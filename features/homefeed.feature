Scenario: basic homefeed add memory
    Given I am on the homefeed page
    And I fill in the memory box with "my memory here"
    And I click "Update Memory"
    Then I should see "my memory here" 
    Then I should see "memory added"