Given(/^an admin account exists$/) do
    FactoryGirl.create(:admin_user)
end 

Given(/^I signed in as an admin$/) do 
  visit('/login')
  fill_in(:id => "username", :with => "admin")
  fill_in(:id => "password", :with => "123")
  click_on(:id => 'loginButton')
end
