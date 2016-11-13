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
 end
  

  
  def edit
    # puts params
    @memcard = MemoryCard.find(params[:id])
    @memcard.editing = true
    @memcard.save
    redirect_to memory_cards_path
  end
  
  def update
    # puts params, "QQQQ"
    @memcard = MemoryCard.find(params[:id])
    @memcard.editing = false
    if params["user"].nil? == false
      @memcard.answer = params["user"]["memory"]
    end
    @memcard.save
    redirect_to memory_cards_path
  end
  
  def share
    puts params, "JAJAAJ"
    @user_to_share_with_name = params["user"]["share"]
    @user_to_share_with = User.where(:username => @user_to_share_with_name)[0]
    puts @user_to_share_with.id, "IDIDIDIDIDID"
    @memcard = MemoryCard.where(:id => params[:id])[0]
    @copy = @memcard.dup
    @copy.category = "Shared"
    @copy.save
    # @sharedcard = SharedCard.create(:question => @memcard.question, :answer => @memcard.answer, )
    @user_to_share_with.memory_cards << @copy
    flash[:notice] = 'Memory successfully shared with #{@user_to_share_with_name}'
    redirect_to memory_cards_path
    
    
  end
    
  def show
  end 

  def save
  end

  def exit
  end
end
