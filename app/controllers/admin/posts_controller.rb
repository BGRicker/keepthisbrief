class Admin::PostsController < AdminController

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
    @category = Category.all
  end

  def create
    @category = Category.find_by_slug(params[:category_id])
    @category.posts.create(post_params)
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:name, :review, :rating)
  end



#  def update
#    @post = Post.find(params[:id])		#find specified post

#    if @post.user != current_user			#if user isn’t the current_user
#      return render :text => 'Not Allowed', :status => :forbidden
#    end

#    @post.update_attributes(post_params)	#update_attributes for specified post
#    redirect_to post_path					#redirect_to root (home)
#  end

#  def destroy
#    @post = Post.find(params[:id])

#    if @post.user != current_user
#      return render :text => 'Not Allowed', :status => :forbidden
#    end

#    @post.destroy
#    redirect_to post_path
#  end

end
