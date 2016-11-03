class MemoryCard < ActiveRecord::Base
    
    def self.all_categories
        return ["All Categories", "Personal", "Historical", "Favorites", "Random"]
    end
end
