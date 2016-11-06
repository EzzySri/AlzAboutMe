FactoryGirl.define do
  factory :memory_card, :class =>MemoryCard do
    question "Q"
    answer  "A"
    question_type "text"
    editing false
    question_choices nil
    category nil 
    
    factory (:multiple_choice) do 
      question_type "multiple_choice"
    end 
    
    factory(:editing) do 
      editing true
    end 
  end
end 
 