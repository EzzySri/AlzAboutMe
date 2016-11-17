class User < ActiveRecord::Base
    has_many :memory_cards
    has_many :shared_cards
	has_secure_password
	

	def email_already_used(email)
	    users = User.all
	    users.each do |user|
	        if user.email == email && self != user
	            return true
	        end
	    end
	    return false
	end

	def getInitialCards
	    puts "getInitialCalled"
	    memories = [ {:question => "Question 1", :answer => "answer here", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "Question 2", :answer => "answer 2 here", :question_type => "text", :completed => false, :editing => false, :category => "Personal"},
             {:question => "Multiple-choice 1", :answer => "answer here", :question_type => "multiple_choice", :question_choices => "red|blue|yellow", :completed => false, :editing => false}
        ]
        memories.each do |mem|
            self.memory_cards << MemoryCard.new(mem)
            puts self.memory_cards, "ASASASASAS"
            self.save!
        end
    end
end
