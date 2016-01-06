class PostsController < ApplicationController
  before_filter :set_post, except: [:index, :new, :create]

  def new
    @post = Post.new(:user => @user)
    @cities = City.all
  end

  def index
    @posts = Post.all
  end

  def create
    @post = current_user.posts.new(post_params)


    if @post.save
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full_messages.join(", ")
      redirect_to new_post_path
    end
  end

  def show
    post_id = params[:id]

    @post = Post.find_by_id(post_id)
  end

  def edit
    post_id = params[:id]

    @post = Post.find_by_id(post_id)
  end

  def update
    post_id = params[:id]

    @post = Post.find_by_id(post_id)

    if @post.update_attributes(post_params)
      flash[:notice] = "Successfully updated post."
      redirect_to post_path(@post)
    else
      flash[:notice] = @post.errors.full_messages.join(", ")
      redirect_to edit_post_path(@post)
    end
  end
  
  def destroy
    post_id = params[:id]

    @post = Post.find_by_id(post_id)

    @post.destroy
    flash[:notice] = "Successfully deleted post."
    redirect_to user_path(@post.user)
  end

  private

  def set_post
    post_id = params[:id]
    @post = Post.find_by_id(post_id)
  end

  def post_params
    params.require(:post).permit(:title, :content, :image, :city_id, :tags, :image)
  end

end
