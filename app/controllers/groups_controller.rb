class GroupsController < ApplicationController
    
    def index
        @groups = Group.where(:creator => current_user.id)
        if @groups.empty?
            @groups = nil
        end
    end
    
    def new
    end
    
    def create
        @group = Group.new(group_params)
        @group.creator = current_user.id
        if @group.save!
            flash[:success] = "Group successfully created"
            redirect_to '/groups'
        end
    end
    
    def edit
        @group = Group.find(params[:id])
        if !@group.people.nil?
            all_members = @group.people.split(",")
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
        if @group.save!
            flash[:success] = "Name successfully changed"
        end
        redirect_to group_path(@group)
    end
    
    def destroy
        group = Group.find(params[:id])
        group.destroy
        
        flash[:success] = "Group successfully deleted"
        redirect_to groups_path
    end
    
    def show
        @group = Group.find(params[:id])
        if !@group.people.nil?
            all_members = @group.people.split(",")
            @people = []
            all_members.each do |member|
                user = User.find(member)
                @people.push(user.username)
            end
        else
            @people = nil
        end
    end
    
    def delete_member
        group = Group.find(params[:id])
        user = User.find_by_username(params[:member])
        people = group.people.split(",")
        people.each do |person|
            account = User.find(person)
            if account.id == user.id
                people.delete(person)
                break
            end
        end
        group.people = people.join(",")
        group.save!
        flash[:success] = "Member successfully removed"
        redirect_to edit_group_path(group)
    end
    
    def add_member
        @group = Group.find(params[:id])
        user = User.find_by_username(params[:group][:people])
        if user
            if (not_already_a_member(user, @group))
                if !@group.people.nil?
                    @group.people = @group.people + user.id.to_s + ","
                else
                    @group.people = user.id.to_s + ","
                end
            else
                flash[:warning] = "User is already a member of this group"
                return redirect_to edit_group_path(@group)
            end
        else
            flash[:warning] = "Username does not exist, cannot add to member to group"
            return redirect_to edit_group_path(@group)
        end
        if @group.save!
            flash[:success] = "Member successfully added"
        end
        redirect_to edit_group_path(@group)
    end
    
    private
        def group_params
            params.require(:group).permit(:creator, :group_name, :people)
        end
        
        def not_already_a_member(usr, group)
            if !group.people.nil?
                people = group.people.split(",")
                people.each do |person|
                    if person == usr.id.to_s
                        return false
                    end
                end
            end
            return true
        end
end
