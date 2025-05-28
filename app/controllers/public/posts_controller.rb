class Public::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    if @post.save
      @post.image.attach(params[:post][:image]) if params[:post][:image].present?
      flash[:notice] = "投稿成功！(o^―^o)"
      redirect_to posts_path
    else
      puts "保存失敗の理由：#{@post.errors.full_messages}"
      flash.now[:alert] = "投稿に失敗しました(´・ω・`)"
      render now :new
    end
  end

  def index
    @posts = Post.all
  end

  def show 
    @post = Post.find(params[:id])
  end

  def edit 
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "編集が完了しました(o^―^o)(o^―^o)"
      redirect_to posts_path
    else
      flash.now[:alert] = "保存に失敗しました(´；ω；`)"
      render :edit
    end
  end

  def destroy
    
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :body, :image)
  end
end
