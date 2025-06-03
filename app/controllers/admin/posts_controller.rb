class Admin::PostsController < Admin::BaseController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to admin_user_path(post.user)
    else
    flash[:alert] = "投稿を削除できませんでした"
    render request.referer
    end
  end
end
