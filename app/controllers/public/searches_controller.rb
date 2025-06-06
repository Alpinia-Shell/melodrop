class Public::SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @posts = Post.where("title LIKE ? OR body LIKE ?", "%#{@content}%", "%#{@content}%")
    @content = params[:content]
  end
end
