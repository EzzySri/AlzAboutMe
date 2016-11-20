class ApplicationController < ActionController::Base
  include CanCan::ControllerAdditions
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
  

  def authorize
    redirect_to '/login' unless current_user
  end
  
  def categories
    @categories = MemoryCard.all_categories
  end
  helper_method :categories
  
  def users
    @users = User.all
  end 
  helper_method :users
  
  def answers
    @answers = Answer.all
  end
  helper_method :answers
end
