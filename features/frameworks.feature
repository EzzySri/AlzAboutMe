
Feature: frameworks 

Scenario: No Selected Framework
	Given I am logged in
	And I am on the users page
	Then the "user_framework_1" radio button within "div#frameworkContainer" should not be selected
	Then the "user_framework_2" radio button within "div#frameworkContainer" should not be selected
	Then the "user_framework_3" radio button within "div#frameworkContainer" should not be selected

Scenario: Update Selected Framework
	Given I am logged in
	And I am on the users page
	And I choose "Framework 1"
	And I click "update-framework-button"
	Then the "user_framework_1" radio button should be selected
	Then the "user_framework_2" radio button within "div#frameworkContainer" should not be selected
	Then the "user_framework_3" radio button within "div#frameworkContainer" should not be selected
