class PostsController < ApplicationController

  def show
    @posts = current_post.questions
  end

  def index
    @posts = Post.all
    @users = User.all
  end

end
