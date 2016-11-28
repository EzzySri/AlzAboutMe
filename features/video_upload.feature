Feature: Providing a video as a memory answer via mobile browser (iPhone and Android)
	As a user,
	So that I can provide a memory with a video attachment from my phone
	I should be able to take and upload a video as a response to a memory

Scenario: Uploading video answer
	Given I am logged in
	And a video answer MemoryCard exists
	And the "Upload Video" button is clicked
	And the "Submit" button is clicked
	Then a video should be exist for the given MemoryCard

