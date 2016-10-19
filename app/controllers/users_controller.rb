class UsersController < ApplicationController
  def new
  end
  def homefeed
    if params["user"] != nil and params["user"]["memory"] != nil
      flash[:notice] = "memory was successfully edited."
      session[:recorded_memory] = params["user"]["memory"]
    end
  end
  # def show
  # end
  
end
