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
    when /^Save Memory$/
      click_on(:id => "updateMemoryButton")
    when /^Personal$/
      click_on(:id=> "personal")
    when/^Menu$/
      click_on(:id=> "menubutton")
    when/^All Categories$/
      click_on(:id=> "allcategories")
    when/^a memory card$/
      # regexp = //memory_cards/\d/edit/
      # find(:xpath, "//a[@href*='/memory_cards/1/edit']").click
      # find("[href*=edit]").click
      find(".card").click
  end
end

Then(/^I should be on the "Sign Up" page$/) do 
  expect(page.body).to have_content("Sign Up with AlzAboutMe")
end

Then(/^I should be logged in$/) do
  expect(page.body).to have_content("Signed in as username1")
end

Then(/^I should see Spongebob$/) do
  expect(page.body).to include("Spongebob")
end
