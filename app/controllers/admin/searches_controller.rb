class Admin::SearchesController < Admin::BaseController

  def search
    @model = params[:model]
    @content = params[:content]

    @results =
    case @model
    when "user"
      User.where("name LiKE ?","%#{@content}%")
    when "post"
      Post.where("title LIKE ? OR body LIKE ?", "%#{@content}%", "%#{@content}%")
    when "comment"
      PostComment.where("comment LIKE ?", "%#{@content}%" )
    else
      []
    end
  end
end
