class GroupsController < ApplicationController
    
    def index
        @groups = Group.where(:creator => current_user.id)
        if @groups.empty?
            puts "WORKS"
            @groups = nil
        end
    end
    
    def create
    end
    
    def updated
    end
    
    def show
    end

end
