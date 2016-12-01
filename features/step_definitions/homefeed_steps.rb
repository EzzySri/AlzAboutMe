Given /I am logged in/ do 
  visit('/users/signup')
  fill_in(:id => "firstname", :with => "first")
  fill_in(:id => "lastname", :with => "last")
  fill_in(:id => "username", :with => "username2")
  fill_in(:id => "email", :with => "email2@email.com")
  fill_in(:id => "password", :with => "password1")
  fill_in(:id => "confirmpassword", :with => "password1")
  click_on(:id => 'signUpSubmitButton')
end
    

# Then /I should see "(.*)"/ do |arg1|
#     expect(page.html).to include(arg1)
#     # expect(page.body).to have_content(arg1)
# end
