class GroupsController < ApplicationController
    
    def index
        @groups = Group.where(:creator => current_user.id)
        if @groups.empty?
            puts "WORKS"
            @groups = nil
        end
    end
    
    def new
    end
    
    def create
        @group = Group.new(group_params)
        @group.creator = current_user.id
        if @group.save!
            redirect_to '/groups'
        else
            redirect_to '/groups/new'
        end
    end
    
    def edit
        @group = Group.find(params[:id])
        if !@group.people.nil?
            all_members = @group.people.split(",")
            puts all_members
            puts "QQQQ"
            @people = []
            all_members.each do |member|
                user = User.find(member)
                @people.push(user.username)
            end
        else
            @people = nil
        end
    end
    
    def update
        @group = Group.find(params[:id])
        @group.group_name = params[:group][:group_name]
        if (!params[:group][:people].nil?)
            user = User.find_by_username(params[:group][:people])
            if user
                if !@group.people.nil?
                    puts user
                    puts "QQQQ"
                    puts user.id
                    @group.people = @group.people + user.id.to_s + ","
                else
                    @group.people = user.id.to_s + ","
                end
            else
                flash[:warning] = "Username does not exist, cannot add to member to group"
                redirect_to groups_path_edit(@group)
            end
        end
        @group.save!
        redirect_to '/groups'
    end
    
    def show
    end
    private
        def group_params
            params.require(:group).permit(:creator, :group_name, :people)
        end
end
