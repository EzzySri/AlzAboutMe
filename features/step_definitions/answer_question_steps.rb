
Given(/^I click on a fill in memory card$/) do
  # TODO: need to find a way to select short answer memcard in general 
  page.find_by_id('short_answer_card').click
end

Given(/^I click on a multiple choice memory card$/) do
  # TODO: need to find a way to select mult choice answer memcard in general 
  page.find_by_id('mult_answer_card').click
end

