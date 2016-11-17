class User < ActiveRecord::Base
  
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
end
