class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(user_params[:username])
    # If the user exists AND the password entered is correct.
    
    if user && user.authenticate(user_params[:password])
      # Save the user id inside the browser cookie. This is how we keep the user 
      # logged in when they navigate around our website.
      session[:user_id] = user.id
      redirect_to '/'
      flash[:notice] = 'Login Successful'
    else
    # If user's login doesn't work, send them back to the login form.
      redirect_to '/login'
      flash[:notice] = 'Login Failed'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end 
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
    end
end
