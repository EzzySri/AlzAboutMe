Then(/^I should be on the "([^"]*)" feed$/) do |feedName|
  expect(page.body).to have_content(feedName)
end
