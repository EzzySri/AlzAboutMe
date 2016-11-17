class MemoryCardsController < ApplicationController
  helper_method :show
  
  def index
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
    if params["user"].nil? == false
      @memcard.answer = params["user"]["memory"]
    end
    @memcard.save

    respond_to do |format|
      format.js
    end
  end
  
  def share
    puts params, "JAJAAJ"
    @user_to_share_with_name = params["user"]["share"]
    @user_to_share_with = User.where(:username => @user_to_share_with_name)[0]
    puts @user_to_share_with != nil ? @user_to_share_with.id : nil, "IDIDIDIDIDID"
    @memcard = MemoryCard.where(:id => params[:id])[0]
    @donatingUser = User.where(:id => @memcard.user_id)[0]
    @donating_username = @donatingUser != nil ? @donatingUser.username : nil
    session[:donating_username] = @donating_username #store in session so that #index can grab it
    @copy = @memcard.dup
    @copy.category = "Shared"
    @copy.user_id = @user_to_share_with != nil ? @user_to_share_with.id : nil
    @copy.save
    if @user_to_share_with != nil
      @user_to_share_with.memory_cards << @copy
      flash[:notice] = 'Memory successfully shared with #{@user_to_share_with_name}'
    else
      flash[:notice] = 'Memory was not shared.'
    end
    redirect_to memory_cards_path
    
    
  end
    
  def show
  end 

  def save
  end

  def exit
    @memcard = MemoryCard.find(params[:id])
    @memcard.editing = false
    @memcard.save
    
    respond_to do |format|
      format.js
    end
  end
end
