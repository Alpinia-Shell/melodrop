class Public::PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_matching_login_user, only:[:edit, :update, :destroy]
  before_action :reject_guest_user, only:[:create, :new, :edit, :update, :destroy]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      @post.image.attach(params[:post][:image]) if params[:post][:image].present?
      flash[:notice] = "雫の提供に成功しました💧"
      redirect_to posts_path
    else
      render :new 
    end
  end

  def index
    @posts = Post.where(is_visible: true)
  end

  def show 
    @post = Post.find(params[:id])
    @post_comment = PostComment.new
  end

  def edit 
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "編集が完了しました"
      redirect_to posts_path
    else
      flash now[:aleart] = "編集に失敗しました"
      render :edit
    end
  end

  def destroy
    if Post.find(params[:id]).destroy
    flash[:notice] = "雫を削除しました"
    redirect_to user_path(current_user)
    else
      flash[:aleart] = "雫の削除に失敗しました"
      render :edit
    end
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :body, :image, :is_visible)
  end

  def is_matching_login_user
    post = Post.find(params[:id])
    unless post.user == current_user
      redirect_to posts_path
    end 
  end

  def reject_guest_user
    if current_user.guest?
      flash[:alert] = "ゲストさんはこの操作を行えません"
      redirect_to posts_path 
    end
  end

end
