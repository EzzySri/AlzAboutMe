class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  # def index
  #   @users = User.all
  #   @memorycards = MemoryCard.all
  # end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # def homefeed
  #   puts "flash recorded"
  #   if params["user"] != nil and params["user"]["memory"] != nil
  #     flash[:notice] = "memory was successfully created."
  #     session[:recorded_memory] = params["user"]["memory"]
  #     puts flash
  #   end
  # end


  # GET /users/1/edit
  def edit
    @change = params[:format]
  end

  # POST /users
  # POST /users.json
  def create
    if (user_params[:first_name] == "" || user_params[:last_name] == "" ||
        user_params[:username] == "" || user_params[:email] == "" ||
        user_params[:password] == "" || user_params[:password_confirmation] == "")
        flash[:notice] = 'All fields are required'
        redirect_to users_signup_path(:user => user_params)
    else
      username_check = User.find_by_username(user_params[:username])
      email_check = User.find_by_email(user_params[:email])
      if (username_check)
        flash[:notice] = 'Username already exists'
        redirect_to users_signup_path(:user => user_params)
      elsif(email_check)
        flash[:notice] = 'email is associated with an existing user'
        redirect_to users_signup_path(:user => user_params)
      elsif (user_params[:password] != user_params[:password_confirmation])
        flash[:notice] = 'Password confirmation did not match password'
        redirect_to users_signup_path(:user => user_params)
      else
        @user = User.new(user_params)
          if @user.save
            session[:user_id] = @user.id
            @user.getInitialCards
            redirect_to '/'
          else 
            redirect_to users_path
          end
      end
    end
  end

  # Get /users/signup
  def sign_up
    if (params.key?("user"))
      @user_params = user_params
    else
      redirect_to users_signup_path(:user => {:first_name => "", :last_name => "", :username => "", :email => "", :password => "", :password_confirmation => ""})
    end
  end
  
  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if (!user_params[:email].nil?)
        if (current_user.email_already_used(user_params[:email]))
          flash[:alert] = "Email Already In Use"
          return redirect_to edit_user_path(current_user, 'email')
        end
      end
      if (!user_params[:password].nil?)
        if (user_params[:password] != user_params[:password_confirmation])
          flash[:alert] = "New Password Not Confirmed"
          return redirect_to edit_user_path(current_user, 'password')
        else
          @user.password = params[:password]
        end
      end
      if @user.update(user_params)
        flash[:notice] = 'User was successfully updated.'
        return redirect_to users_settings_path
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /users/1
  # DELETE /users/1.json
  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
  #     format.json { head :no_content }

  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :framework, :email, :password, :password_confirmation)
    end
    

end


    
  