class Public::PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    post =  Post.new(post_params)
    if post.save
      flash[:notice] = "投稿成功！(o^―^o)"
      redirect_to posts_path
    else
      flash[:alert] = "投稿に失敗しました(´・ω・`)"
      render :new
    end
  end

  def index
  end

  def show 
  end

  def edit 
    
  end

  def update
    
  end

  def destroy
    
  end
  
  private
  def post_params
    params.require(:post).permit(:title, :body, :images [])
  end
end
