class MemoryCardsController < ApplicationController
  helper_method :show
  
  def index
    if params[:category] == "Shared"
      # session[:viewing_shared] = true
      @shareRows = ShareTable.where(:receiver => current_user.id)
      @memcard_ids = []
      @shareRows.each do |row|
        @memcard_ids << row.memcard_id
      end
      @memorycards = MemoryCard.where(id: @memcard_ids)
      render "sharingPage.html.haml"
      return
    end
    
    if params[:category].nil?
      @memorycards = MemoryCard.where(:user_id => session[:user_id], :category => session[:category])
    else
      session[:category] = params[:category]
        @memorycards = MemoryCard.where(:user_id => session[:user_id], :category => params[:category])
      end
    if session[:category] == "All Categories"
       @memorycards = MemoryCard.where(:user_id => session[:user_id]) 
    end
    @category = params[:category] || "All Categories"
    @donating_username = session[:donating_username] 
 end

  def add_card_for_all_users
    users.each do |usr|
      memcard_params[:user_id] = usr.id
      @card = MemoryCard.new(memcard_params)
     
      usr.memory_cards << @card
      if !@card.save || !usr.save
        return false
      end 
    end 
    return true
  end 
 
  def create
    if (memcard_params[:question] == "" || memcard_params[:category] == "")
      flash[:notice] = 'All fields required!'
       redirect_to '/' and return 
    end 
    if add_card_for_all_users
      flash[:notice] = 'New Question Saved Successfully!'
      redirect_to '/'
    else 
      flash[:notice] = 'Error saving card'
      redirect_to '/' and return 
    end 
  end 
  
  def edit
    @memcard = MemoryCard.find(params[:id])
    @memcard.editing = true
    @memcard.save
    respond_to do |format|
      format.js
    end
  end
  
   def update
    @memcard = MemoryCard.find(params[:id])
    @memcard.editing = false
    if params["user"].nil? == false and params["user"]["memory"] != "" 
      @memcard.answer = params["user"]["memory"]
      @memcard.previous_answers = params["user"]["memory"] + "||" + (@memcard.previous_answers || "")
    end
    if params.key? :video_memory
      @memcard.update_attributes(video_memory: video_memory_params)
    end
    @memcard.save
    respond_to do |format|
      format.js
    end
  end

  # def share
  #   puts params, "JAJAAJ"
  #   @user_to_share_with_name = params["user"]["share"]
  #   @user_to_share_with = User.where(:username => @user_to_share_with_name)[0]
  #   puts @user_to_share_with.id, "IDIDIDIDIDID"
  #   @memcard = MemoryCard.where(:id => params[:id])[0]
  #   @donating_username = User.where(:id => @memcard.user_id)[0].username
  #   session[:donating_username] = @donating_username #store in session so that #index can grab it
  #   @copy = @memcard.dup
  #   @copy.category = "Shared"
  #   @copy.user_id = @user_to_share_with.id
  #   @copy.save
  #   @user_to_share_with.memory_cards << @copy
  #   flash[:notice] = 'Memory successfully shared with #{@user_to_share_with_name}'
  #   redirect_to memory_cards_path
  # end 
    
  def show
  end 

  def save
  end
  
  # Forcing question_type => text for now
  def memcard_params
    params.require(:memcard).permit(:question, :category, :user_id, :question_type, :question_choices, :completed, :created_at, :updated_at, :previous_answers).merge(:question_type => "text", :answer => "", :user_id => current_user.id, :editing => false)
  end
  
  def exit
    @memcard = MemoryCard.find(params[:id])
    @memcard.editing = false
    @memcard.save
    respond_to do |format|
      format.js
    end
  end
  
  def viewPrevious
    @memcard = MemoryCard.find(params[:id])
    session[:prevView] = true
    respond_to do |format|
      format.js
    end
  end
  
  def hidePrevious
    @memcard = MemoryCard.find(params[:id])
    session[:prevView] = false
    respond_to do |format|
      format.js
    end
  end
  
  def viewShareOptions
    session[:viewShare] = true
    @memcard = MemoryCard.find(params[:id])
    @groups = Group.where(:creator => current_user.id)
     respond_to do |format|
      format.js
    end
  end
  
  def hideShareOptions
    @memcard = MemoryCard.find(params[:id])
    session[:viewShare] = false
    respond_to do |format|
      format.js
    end
  end
  
  def shareGroup
    @memcard = MemoryCard.find(params[:id])
    @groups_to_share_with = []
    @all_groups = params[:sharedGr].keys
    @all_groups.each do |group|
      if params[:sharedGr][group] == "1"
        @groups_to_share_with << group
      end
    end
    @groups_to_share_with.each do |shareGroup|
      @people_to_share_with = Group.where(:group_name => shareGroup, :creator => current_user.id)[0].people.split(",")
      @people_to_share_with.each do |person|
        ShareTable.create!({:donator => current_user.id, :receiver => person, :memcard_id => @memcard.id})
      end
    end
    respond_to do |format|
      format.js
    end
  end

  private  

  def video_memory_params
    video_memory_key = params[:video_memory].keys[0]
    params.require(:video_memory)[video_memory_key]
  end
      
    
end 
