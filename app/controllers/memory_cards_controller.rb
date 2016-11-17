class MemoryCardsController < ApplicationController
  helper_method :show
  
  def index
    @memorycards = MemoryCard.all
  end
  
  def create
    puts memcard_params
    if (memcard_params[:question] == "" || memcard_params[:category] == "")
      flash[:notice] = 'All fields required!'
       redirect_to '/' and return 
    end 
    @memcard = MemoryCard.new(memcard_params)
    if @memcard.save
      flash[:notice] = 'New Question Saved Successfully !'
      @memorycards = MemoryCard.all
      redirect_to '/'
    else 
      flash[:notice] = 'Error saving card'
      redirect_to '/'
    end 
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
  
  def memcard_params
      params.require(:memcard).permit(:question, :category)
  end

  def exit
  end
end
