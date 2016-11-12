class MemoryCardsController < ApplicationController
  helper_method :show
  
  def index
   if (params[:category] == "All Categories" || params[:category] == "all")
     @memorycards = MemoryCard.all
   elsif(params[:category])
     @memorycards = MemoryCard.where(:user_id => session[:user_id], :category => params[:category])
   else
     @memorycards = MemoryCard.all
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
  
  def show
  end 

  def save
  end

  def exit
  end
end
