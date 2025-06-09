class Public::SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @content = params[:content]
    @posts = Post.where("title LIKE ? OR body LIKE ?", "%#{@content}%", "%#{@content}%").order(created_at: :desc)
  end
end
