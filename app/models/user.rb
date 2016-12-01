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
	    # Every new user has their memory cards populated from the super admin's cards
	    admin = User.find(1)
	    memories = admin.memory_cards
        memories.each do |mem|
        	mem_params = {:question => mem.question, :question_type => mem.question_type, :question_choices => mem.question_choices, :completed => false, :editing => false, :category => mem.category, :user_id => self.id, :answer => "", :previous_answers => ""}
            self.memory_cards << MemoryCard.new(mem_params)
            self.save!
        end
    end
end
