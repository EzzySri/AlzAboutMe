Feature: Providing a video as a memory answer via mobile browser (iPhone and Android)
	As a user,
	So that I can provide a memory with a video attachment from my phone
	I should be able to take and upload a video as a response to a memory

Scenario: Uploading video answer
	Given I am logged in
	And I add video answer to existing MemoryCard
	And I click "Upload Video" 
	And I click "Submit"
	Then I should see a video

Scenario: Viewing a previously uploaded video answer
	Given I am logged in
	And I view a MemoryCard with an existing video answer
	Then I should see a video



