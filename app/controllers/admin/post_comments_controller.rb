class Admin::PostCommentsController < Admin::BaseController
  def index
    @comments = PostComment.page(params[:page])
  end

  def show
    @comment = PostComment.find(params[:id])
  end

  def destroy
   comment = PostComment.find(params[:id])
   if comment.destroy
    flash[:notice] = "コメントを削除しました"
   redirect_to admin_user_path(comment.user)
   else
    flash.now[:alert] = "コメントを削除できませんでした"
    render 'admin/users/show'
   end
  end
end
