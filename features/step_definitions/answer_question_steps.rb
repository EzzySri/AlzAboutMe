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
      # @fakeUser = User.create!(:username => "admin", :password => "123", :password_confirmation => "123", :role => "admin")
      @fakeCard = FactoryGirl.create(:short_answer_card)
      User.where(:username => "admin")[0].memory_cards << @fakeCard
      User.where(:username => "admin")[0].save!
      # @fakeUser.save
    when /^multiple choice$/
      FactoryGirl.create(:multiple_choice_card)
  end 
end 

