class Admin::PostsController < ApplicationController

  def new
    @post = Post.new
    @categories = current_category
    if @post.valid?
      redirect_to root_path
    else
      render :new, :status => :unprocessable_entity
    end
  end

  def create
  
  end

private

  helper_method :current_category

  def current_category
    @current_category ||= Category.find(params[:id])
  end

end
