Given(/^I have an account$/) do
 User.create(:first_name => "fn", :last_name => "ln", :username => "username1" , :email => "fake@google.com", :password  => "pass1", :password_confirmation  => "pass1")
end

When(/^I type in my username$/) do
  fill_in(:id => "signUpUsername", :with => "username1")
end

When(/^I type in my password$/) do
  fill_in(:id => "signUpPassword", :with => "pass1")
end

When(/^I click "([^"]*)"$/) do |arg1|
  if arg1 == "Log In"
    click_on(:id => "loginButton")
  end
end