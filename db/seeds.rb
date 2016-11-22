
memories = [
             {:question => "Where were you born?", :question_type => "text", :completed => false, :editing => false, :category => "Personal", :previous_answers => "@prev"},
             {:question => "What is your astrological sign?", :question_type => "text", :completed => false, :editing => false, :category => "Personal", :previous_answers => "@prev"},
             {:question => "What is your blood type?", :question_type => "text", :completed => false, :editing => false, :category => "Personal", :previous_answers => "@prev"},
             {:question => "What is your profession?", :question_type => "text", :completed => false, :editing => false, :category => "Personal", :previous_answers => "@prev"},
             {:question => "What is your hair color?", :question_type => "text", :completed => false, :editing => false, :category => "Personal", :previous_answers => "@prev"},
             {:question => "What is your eye color?", :question_type => "text", :completed => false, :editing => false, :category => "Personal", :previous_answers => "@prev"},
             {:question => "How much do you weigh?", :question_type => "text", :completed => false, :editing => false, :category => "Personal", :previous_answers => "@prev"},
             {:question => "What is your astrological sign?", :question_type => "multiple_choice", :question_choices => "Aquarius|Pisces|Aries|Taurus|Gemini|Cancer|Leo|Virgo|Libra|Scorpio|Sagittarius|Capricorn", :completed => false, :editing => false, :category => "Personal", :previous_answers => "@prev"},
             {:question => "What is your mother's full name?", :question_type => "text", :completed => false, :editing => false, :category => "Historical", :previous_answers => "@prev"},
             {:question => "When is your mother's birthday?", :question_type => "text", :completed => false, :editing => false, :category => "Historical", :previous_answers => "@prev"},
             {:question => "Where does your mother come from?", :question_type => "text", :completed => false, :editing => false, :category => "Historical", :previous_answers => "@prev"},
             {:question => "What is your mother's maiden name?", :question_type => "text", :completed => false, :editing => false, :category => "Historical", :previous_answers => "@prev"},
             {:question => "What is your father's full name?", :question_type => "text", :completed => false, :editing => false, :category => "Historical", :previous_answers => "@prev"},
             {:question => "When is yor father's birthday?", :question_type => "text", :completed => false, :editing => false, :category => "Historical", :previous_answers => "@prev"},
             {:question => "Where does your father come from?", :question_type => "text", :completed => false, :editing => false, :category => "Historical", :previous_answers => "@prev"},
             {:question => "What color do you like to wear?", :question_type => "text", :completed => false, :editing => false, :category => "Favorites", :previous_answers => "@prev"},
             {:question => "What's your favorite color?", :question_type => "multiple_choice", :question_choices => "Red|Orange|Yellow|Green|Blue|Purple", :completed => false, :editing => false, :category => "Favorites", :previous_answers => "@prev"},
             {:question => "What color do you like to wear?", :question_type => "text", :completed => false, :editing => false, :category => "Favorites", :previous_answers => "@prev"},
             {:question => "What pet would you like to own?", :question_type => "text", :completed => false, :editing => false, :category => "Favorites", :previous_answers => "@prev"},
             {:question => "What city do you like to visit?", :question_type => "text", :completed => false, :editing => false, :category => "Favorites", :previous_answers => "@prev"}
]

memories.each do |mem|
    
    MemoryCard.create!(mem.merge(:user_id => "1"))
end


accounts = [ {:username => "admin", :password => "123", :password_confirmation => "123", :role => "admin"}
    ]

accounts.each do |account|
    User.create!(account)
end 