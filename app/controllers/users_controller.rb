class UsersController < ApplicationController
  


  def create
    @user = User.new(user_params)
    if @user.save
      # when new user created, hard-coded post is automatically added to profile page
      first_post = Post.new( {
        :user => @user,
        :author => @user.first_name + @user.last_name,
        :title => "Generic post title",
        :content => "Post content" } )
      
      if first_post.save
        flash[:notice] = "You have successfully created an account"
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
      end
    else
      redirect_to new_user_path
      flash[:error] =  @user.errors.full_messages.join(", ")
    end  
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
   @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user.id)
    else
      redirect_to edit_user_path
      flash[:error] =  @user.errors.full_messages.join(", ")
    end
  end

  def destroy
  end

  def show
  end

  def index
  end
  
  private
  
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :current_city, :password, :password_confirmation)
  end
end
