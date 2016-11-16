# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
memories = [ {:question => "When is your birthday?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "Where were you born?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "What is your astrological sign?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "What is your blood type?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "What is your profession?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "What is your hair color?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "What is your eye color?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "How much do you weigh?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "What is your astrological sign?", :question_type => "multiple_choice", :question_choices => "Aquarius|Pisces|Aries|Taurus|Gemini|Cancer|Leo|Virgo|Libra|Scorpio|Sagittarius|Capricorn", :completed => false, :editing => false, :category => "Personal"},
             {:question => "What is your mother's full name?", :question_type => "text", :completed => false, :editing => false, :category => "Historical"},
             {:question => "When is your mother's birthday?", :question_type => "text", :completed => false, :editing => false, :category => "Historical"},
             {:question => "Where does your mother come from?", :question_type => "text", :completed => false, :editing => false, :category => "Historical"},
             {:question => "What is your mother's maiden name?", :question_type => "text", :completed => false, :editing => false, :category => "Historical"},
             {:question => "What is your father's full name?", :question_type => "text", :completed => false, :editing => false, :category => "Historical"},
             {:question => "When is yor father's birthday?", :question_type => "text", :completed => false, :editing => false, :category => "Historical"},
             {:question => "Where does your father come from?", :question_type => "text", :completed => false, :editing => false, :category => "Historical"},
             {:question => "What color do you like to wear?", :question_type => "text", :completed => false, :editing => false, :category => "Favorites"},
             {:question => "What's your favorite color?", :question_type => "multiple_choice", :question_choices => "Red|Blue|Yellow|Green", :completed => false, :editing => false, :category => "Favorites"},
             {:question => "What color do you like to wear?", :question_type => "text", :completed => false, :editing => false, :category => "Favorites"},
             {:question => "What pet would you like to own?", :question_type => "text", :completed => false, :editing => false, :category => "Favorites"},
             {:question => "What city do you like to visit?", :question_type => "text", :completed => false, :editing => false, :category => "Favorites"},
]

memories.each do |mem|
    MemoryCard.create!(mem)
end