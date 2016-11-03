Given(/^I click on a fill in memory card$/) do
  # TODO: need to find a way to select short answer memcard in general
  # expect(page).to have_content("SDSSDSDFSDF")
  click_on(:id => "memLink1")
end


Then(/^I should not see "([^"]*)"$/) do |arg1|
  expect(page).to_not have_content(arg1)
  # TODO: need to find a way to select mult choice answer memcard in general 
  # page.find("#mult_answer_card").click
end

