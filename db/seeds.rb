# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
memories = [ {:question => "Question here", :answer => "answer here", :question_type => "text", :completed => false},
             {:question => "Question 2 here", :answer => "answer 2 here", :question_type => "text", :completed => false},
             {:question => "Multiple-choice question here", :answer => "answer here", :question_type => "multiple_choice", :question_choices => "red|blue|yellow", :completed => false}
]


memories.each do |mem|
    MemoryCard.create!(mem)
end