
Given(/^(?:I )am on (.+)$/) do |page_name|
  case page_name
    when /^the home\s?page$/
      visit('/')
    when /^the "Sign Up" page$/
      visit('/users/signup')
    when /^the homefeed page$/
      visit('/')
    when /^the homefeed page$/
      visit()
  end
end

When(/^I click on "([^"]*)"$/) do |arg1|
  case arg1
    when /^Sign Up$/
      click_on(:id => 'signUpButton')
    when /^Submit$/
      click_on(:id => 'signUpSubmitButton')
    when /^Log In$/ 
      click_on(:id => "loginButton")
    when  /^Login$/ 
      click_on(:id => "loginLink")
    when /^Update Memory$/ 
      click_on(:id => "updateMemoryButton")
  end
end

Then(/^I should be on the "Sign Up" page$/) do 
  expect(page.body).to have_content("Sign Up with AlzAboutMe")
end

Then(/^I should be logged in$/) do
  expect(page.body).to have_content("Signed in as username1")
end
