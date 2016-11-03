

Given(/^I click on a fill in memory card$/) do
  # TODO: need to find a way to select short answer memcard in general 
  # card = FactoryGirl.build(:memory_cards, question_type: "text")
  # page.find("#short_answer_card", :visible => false).click
  click_on("Question here")
end

Given(/^I click on a multiple choice memory card$/) do
  # TODO: need to find a way to select mult choice answer memcard in general 
  page.find("#mult_answer_card").click
end

