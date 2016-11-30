 FactoryGirl.define do
   factory :short_answer_card, :class =>MemoryCard do
     question "Q"
     answer  "A"
     question_type "text"
     editing true
     question_choices nil
     category nil 
     user_id 1
   end 
  
   factory :multiple_choice_card, :class =>MemoryCard do
     question "Q"
     answer  "A"
     question_type "multiple_choice"
     question_choices "A|B|C|D"
     editing true
     category nil 
   end 

   
   factory :admin_user, :class =>User do
     username "admin"
     password  "123"
     password_confirmation "123"
     role "admin"
   end 
 end 
 