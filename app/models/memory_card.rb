class MemoryCard < ActiveRecord::Base
    # belongs_to :user
    has_many :answers
	def multiple_choice_entries
		self.question_choices.present? ? self.question_choices.split("|") : []
	end
    
    def self.all_categories
        return ["All Categories", "Personal", "Historical", "Favorites", "Random", "Shared"]
    end
end
