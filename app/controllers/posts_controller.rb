class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def index
    if params[:category_id].present?
      @category = Category.find_by_slug(params[:category_id])
      @posts = @category.posts
    else
      @posts = Post.all
    end
    @users = User.all
  end

end
