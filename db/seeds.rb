# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
memories = [ {:question => "Where were you born?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "What's your astrological sign?", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "What's your favorite color?", :question_type => "multiple_choice", :question_choices => "Red|Blue|Yellow|Green", :completed => false, :editing => false, :category => "Favorites"}
]

memories.each do |mem|
    MemoryCard.create!(mem)
end