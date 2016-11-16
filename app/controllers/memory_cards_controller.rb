class MemoryCardsController < ApplicationController
  helper_method :show
  
  def index
    @memorycards = MemoryCard.all
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
