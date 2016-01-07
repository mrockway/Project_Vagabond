class UsersController < ApplicationController
  
  before_action :set_user, except: [:index, :new, :create]

  def index
  end

  def new
    if current_user
      redirect_to user_path(current_user)
    else
      @user = User.new
    end
  end

  def create
    if current_user
      redirect_to user_path(current_user)
    else
      @user = User.new(user_params)
      if @user.save
        flash[:notice] = "You have successfully created an account"
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
      else
        flash[:error] =  @user.errors.full_messages.join(", ")
        redirect_to new_user_path
      end
    end  
  end

  def show
    unless current_user == @user
      redirect_to root_path
    end
  end

  def edit
    unless current_user == @user
      redirect_to user_path(current_user)
    end
  end

  def update
    if  current_user == @user
      if @user.update_attributes(user_params)
        redirect_to user_path(@user.id)
      else
        redirect_to edit_user_path
        flash[:error] =  @user.errors.full_messages.join(", ")
      end
    else
      redirect_to user_path(current_user)
    end
  end

  def destroy
    if current_user == @user
      @user.destroy
      session[:user_id] = nil
      flash[:notice] = "Successfully deleted profile."
      redirect_to "/login"
    else
      redirect_to root_path
    end
  end
  
  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :current_city, :password, :password_confirmation, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
