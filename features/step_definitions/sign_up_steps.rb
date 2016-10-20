Given(/^I'm on the home page$/) do
  visit('/')
end

When(/^I click on "([^"]*)"$/) do |arg1|
  # click_on({:id => 'signUpButton'})
  if arg1 == "Submit"
    click_on(:id => 'signUpButton')
  end
end

Then(/^I should be on the "Sign Up" page$/) do 
  expect(page.body).to have_content("Sign Up with AlzAboutMe")
end

Given(/^I'm on the "Sign Up" page$/) do
  visit('/users/signup')
end

When(/^I input my first name$/) do 
  fill_in(:id => "signUpFirstName", :with => "firstName")
end
  
And(/^I input my last name$/) do 
  fill_in(:id => "signUpLastName", :with => "lastName")
end

And(/^I input my username$/) do
  fill_in(:id => "signUpUsername", :with => "username1")
end

And(/^I input my password$/) do
  fill_in(:id => "signUpPassword", :with => "password1")
end

And(/^I confirm my password$/) do 
   fill_in(:id => "signUpPasswordConfirmation", :with => "password1")
end
  
Then(/^I should be logged in$/) do
  expect(page.body).to have_content("Signed in as username1")
end