Given(/^I click on a (.+) memory card$/) do |type|
    case type 
        when /^multiple choice$/
        when /^short answer$/
    end 

end

Given(/^a (.+) MemoryCard exists$/) do |type|
  case type 
    when /^short answer$/
      # Need to add the factory girl questions to all the users to get this to work
      FactoryGirl.create(:short_answer_card)
    when /^multiple choice$/
      FactoryGirl.create(:multiple_choice_card)
  end 
end 

