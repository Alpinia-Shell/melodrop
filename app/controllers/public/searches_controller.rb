class Public::SearchesController < ApplicationController
  before_action :authenticate_user!

  def search
    @posts = Post.where("title LIKE ? OR body LIKE ?", "%#{params[:content]}%", "%#{params[:content]}%")
    @content = params[:content]
  end
end
