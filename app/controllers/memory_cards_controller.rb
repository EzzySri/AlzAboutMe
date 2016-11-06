class MemoryCardsController < ApplicationController
  helper_method :show
  
  def index
    @memorycards = MemoryCard.all
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
    MemoryCard.all.each do |memcard|
      @memcard = memcard
      if memcard.question_type == "text"
        render 'short'
      else 
        render 'multiple'
      end 
    end 
  end 

  def save
  end

  def exit
  end
end
