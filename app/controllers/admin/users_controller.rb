class Admin::UsersController < Admin::BaseController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "ステータスの変更が完了しました"
    redirect_to admin_user_path(@user)
    else
      flash now[:aleart] = "ステータスの変更に失敗しました"
      render :show
    end
  end

  private 
  def user_params
    params.require(:user).permit(:is_active)
  end
end
