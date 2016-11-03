class MemoryCard < ActiveRecord::Base
	def multiple_choice_entries
		self.question_choices.present? ? self.question_choices.split("|") : []
	end
end
