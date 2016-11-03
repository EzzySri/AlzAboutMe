

Given(/^I click on a fill in memory card$/) do
  # TODO: need to find a way to select short answer memcard in general 
  click_on(:id => "memLink1")
end

Given(/^I click on a multiple choice memory card$/) do
  # TODO: need to find a way to select mult choice answer memcard in general 
  page.find("#mult_answer_card").click
end

