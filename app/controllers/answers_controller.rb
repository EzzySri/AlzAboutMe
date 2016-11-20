class AnswersController < ApplicationController
    def update
        @answer = Answer.find(params[:id])
        @answer.answer = params["user"]["memory"]
        if (!@answer.save)
            flash[:warning] = "Error saving answer"
        end
        respond_to do |format|
          format.js
        end
    end
end
