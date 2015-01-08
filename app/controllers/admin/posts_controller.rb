class Admin::PostsController < ApplicationController

  def new
    @post = Post.new
    @category = Category.all
  end

  def create
    @post = Post.find_by_slug(params[:category_id])
    @post.posts.create(post_params)
    redirect_to root_path
  end

  def index
    @post = Post.all
  end

private

  helper_method :current_category

  def current_category
    @current_category ||= Category.find(params[:id])
  end

end
