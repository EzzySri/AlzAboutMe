Then(/^I should be on the "([^"]*)" feed$/) do |feedName|
  expect(page.body).to have_content(feedName)
end

Then(/^I click outside of the menu$/) do
  pending # Write code here that turns the phrase above into concrete actions
end