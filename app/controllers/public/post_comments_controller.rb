class Public::PostCommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_matching_comment_create_user, only: [:destroy]

  def create
    @post = Post.find(params[:post_id]) 
    comment = current_user.post_comments.new(post_comment_params)
    comment.post_id = @post.id
    comment.save
  end

  def destroy
    @post_comment = PostComment.find(params[:id])
    @post = @post_comment.post
    @post_comment.destroy
  end

  private
  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end

  def is_matching_comment_create_user
    comment = PostComment.find(params[:id])
    unless comment.user == current_user
      flash[:alert] = "他のアメフラシのコメントは削除できません"
      redirect_to posts_path
    end    
  end
end
