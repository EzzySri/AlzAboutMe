require 'rails_helper'

RSpec.describe MemoryCard, type: :model do
   describe 'GET qtypes' do
    #   get :all_question_types
        it 'gets qtypes' do
           expect(MemoryCard.all_question_types).to eql(["text", "multiple_choice"])
           @memcard = MemoryCard.create(:id => 1, :user_id => 12, :question => "What is your name?", :answer => "Daniel")
           expect(@memcard.multiple_choice_entries).to_not eql(nil)
        end
        
        
   end
  
end
