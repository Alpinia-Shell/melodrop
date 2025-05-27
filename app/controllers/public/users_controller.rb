class Public::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_current_user, only: [:edit, :update]

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "プロフィールの更新に成功したよ(o^―^o)"
      redirect_to user_path(@user)
    else
      flash[:alert] = "プロフィールの更新に失敗したよ(´・ω・`)"
      render :edit 
    end   
  end

  private 
  def user_params
    params.require[:user].permit[:name, :profile_image, :introduction]
  end

  def ensure_current_user
    @user = User.find(params[:id])
    redirect_to root_path unless @user == current_user   
  end
end
