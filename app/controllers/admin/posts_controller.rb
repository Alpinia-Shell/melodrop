class Admin::PostsController < Admin::BaseController
  
  def index
    @posts = Post.all
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to admin_user_path(post.user)
  end
end
