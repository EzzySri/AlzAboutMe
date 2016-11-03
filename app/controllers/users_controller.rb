class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    @memorycards = MemoryCard.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def homefeed
    puts "flash recorded"
    if params["user"] != nil and params["user"]["memory"] != nil
      flash[:notice] = "memory was successfully created."
      session[:recorded_memory] = params["user"]["memory"]
      puts flash
    end
  end


  # GET /users/1/edit
  def edit
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
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }

    end
  end
  
  def homefeed
    if params["user"] != nil and params["user"]["memory"] != nil
      flash[:notice] = "memory was successfully edited"
      session[:recorded_memory] = params["user"]["memory"]
    end
    redirect_to '/'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
    end
end


    
  