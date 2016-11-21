class AnswersController < ApplicationController
    def update
        puts "AAAAA"
        # @answer = Answer.find(params[:id])
        # @answer.answer = params["user"]["memory"]
        # if (!@answer.save)
        #     flash[:warning] = "Error saving answer"
        # end
        # respond_to do |format|
        #   format.js
        # end
    end
    
    def show
        puts "IN SHOW"
    end
    
    def destroy
        puts "IN DEST"
    end
    
    def index
        puts "INDEX"
    end
end
