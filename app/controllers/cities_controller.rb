class CitiesController < ApplicationController
  
  before_filter :set_city
  before_filter :get_posts
  before_filter :get_users

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  private
  
  def set_city
  	city_id = params[:id]
  	@city = City.find_by_id(city_id)
  end

  def get_posts
    @posts = Post.all
  end

  def get_users
    @users = User.all
    @user = @users.each do |user|
    end
  end

end
