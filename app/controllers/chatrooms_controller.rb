class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(user_id: current_user.id)
  end

  def create
    @chatroom = Chatroom.new
    @handyman = Handyman.find(params[:handyman_id])
    @chatroom.user = current_user
    @chatroom.handyman = @handyman
    @chatroom.name = "Handy: #{@handyman.user.full_name} Client: #{current_user.full_name}"
    if @chatroom.save
      redirect_to chatroom_path(@chatroom)
    end
  end

  def show
    index
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
