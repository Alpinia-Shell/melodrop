class Public::SeachesController < ApplicationController
  before_action :authenticate_user!

  def search
    @posts = Post.where("content LIKE?", "%#{params[:content]}%")
    @content = Params[:content]
  end
end
