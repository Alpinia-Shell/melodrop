class Public::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :is_matching_login_user, only: [:edit, :update, :destroy]
  before_action :reject_guest_user

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "プロフィールの更新に成功したよ(o^―^o)"
      redirect_to user_path(@user)
    else
      render :edit 
    end   
  end

  def show
    @user = User.find(params[:id])
    @posts_true = @user.posts.where(is_visible: true).order(created_at: :desc)
    @posts_false = @user.posts.where(is_visible: false).order(created_at: :desc)
    @favorited_posts = @user.favorited_posts.where(is_visible: true).includes(:user, :favorites, :post_comments).order(created_at: :desc)

    @currentUserEntry = Entry.where(user_id: current_user.id)
    @userEntry = Entry.where(user_id: @user.id)
    if @user.id == current_user.id
    else
      @currentUserEntry.each do |cu|
        @userEntry.each do |u|
          if cu.room_id == u.room_id
            @isRoom = Room.find_by(id: cu.room_id)
            break
          end
        end
        break if @isRoom
      end
    end
    unless @isRoom
      @room = Room.new
      @entry = Entry.new
    end
  end

  def destroy_confirm
    @user = current_user
  end

  def destroy
    if current_user.update(is_active: false)
      reset_session
      flash[:notice] = "退会が完了しました。MeloDropはいつでもあなたの帰りを待っています。"
      redirect_to new_user_registration_path
    else 
      flash[:alert] = "退会処理に失敗しました"
      render :edit
    end
  end

  private 
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end

  def is_matching_login_user
    user = User.find(params[:id])
    unless user == current_user 
      redirect_to user_path(current_user)
    end    
  end

  def reject_guest_user
    if current_user.guest?
      redirect_to posts_path, alert: 'ゲストユーザーはこの操作を行えません。'
    end
  end
end
