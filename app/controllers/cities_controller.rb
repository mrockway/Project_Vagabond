class CitiesController < ApplicationController
  
  before_filter :set_user
  before_filter :set_city
  before_filter :get_all_posts
  before_filter :get_all_users

  def index
  end

  # def new
  # end

  # def create
  # end

  def show
  end
  
  private
  
  def set_user
    if current_user.nil?
      redirect_to login_path
      flash[:notice] = "Please sign up or login to continue"
    end
  end

  def set_city
  	city_id = params[:id]
  	@city = City.find_by_id(city_id)
  end

  def get_all_posts
    @posts = Post.all
  end

  def get_all_users
    @users = User.all
  end

end
