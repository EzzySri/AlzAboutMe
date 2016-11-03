Given(/^I have an account$/) do
# User.create(:first_name => "fn", :last_name => "ln", :username => "username1" , :email => "fake@google.com", :password  => "pass1", :password_confirmation  => "pass1")
  visit('/users/signup')
  fill_in(:id => "firstname", :with => "first")
  fill_in(:id => "lastname", :with => "last")
  fill_in(:id => "username", :with => "username1")
  fill_in(:id => "email", :with => "email@email.com")
  fill_in(:id => "password", :with => "password1")
  fill_in(:id => "confirmpassword", :with => "password1")
  click_on(:id => 'signUpSubmitButton')
  click_on(:id => 'logoutLink')
end

Then(/^I should be on the "Login" page$/) do 
  expect(page.body).to have_content("Sign In to AlzAboutMe")
end



