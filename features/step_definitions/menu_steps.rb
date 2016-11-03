

Then(/^I should be on the "([^"]*)" feed$/) do |feed|
  expect(page.html).to include(feed)
end

Then(/^I should see “Personal”$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
