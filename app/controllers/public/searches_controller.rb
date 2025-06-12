class Public::SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @content = params[:content]
    @posts = Post.where("is_visible = ? AND (title LIKE ? OR body LIKE ?)", true, "%#{@content}%", "%#{@content}%").order(created_at: :desc)
  end
end
