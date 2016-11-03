
Given(/^I click on a fill in memory card$/) do
  # TODO: need to find a way to select short answer memcard in general 
  # page.find("Question here", :visible => false).click
  
  click_on(:id => "memLink1")
  # page.find("h1", :text => "answer here").click
  # expect(page).to have_content("dsfdsfsd")
end

Given(/^I click on a multiple choice memory card$/) do
  # TODO: need to find a way to select mult choice answer memcard in general 
  page.find("#mult_answer_card").click
end

