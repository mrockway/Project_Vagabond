class PostsController < ApplicationController
  before_filter :set_post, except: [:index, :new, :create]

  def new
  end

  def index
  end

  def create
  end

  def show

  end

  def edit
  end

  def update
  end
  
  def destroy
  end

  private

  def set_post
    post_id = params[:id]
    @post = Post.find_by_id(post_id)
  end

end
