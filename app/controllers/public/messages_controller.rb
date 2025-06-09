class Public::MessagesController < ApplicationController
  before_action :authenticate_user!, only:[:create]

  def create
    @room = Room.find_by(id: params[:message][:room_id])
    if Entry.exists?(user_id: current_user.id, room_id: params[:message][:room_id])
      @message = Message.new(message_params)
      @message.user_id = current_user.id
      if @message.save
      else
        render 'error.js.erb'
      end
    end
  end

  private
  def message_params 
    params.require(:message).permit(:message, :room_id)
  end
end
