class MemoryCard < ActiveRecord::Base
    belongs_to :user
    belongs_to :share_table

    has_attached_file :video_memory, 
                      { :default_url => "/images/:style/missing.png", 
                      :styles => {
                        :medium => { :geometry => "640x480", :format => 'mp4' },
                        :thumb => { :geometry => "100x100#", :format => 'jpg', :time => 10 }
                      }, 
                      :processors => [:transcoder] }
    validates_attachment_content_type :video_memory, :content_type => /\Avideo\/.*\Z/

	def multiple_choice_entries
		self.question_choices.present? ? self.question_choices.split("|") : []
	end
    
    def self.all_categories
        return ["All Categories", "Personal", "Historical", "Favorites", "Random", "Shared"]
    end
    
    def self.all_question_types
        return ["text", "multiple_choice"]
    end
end
