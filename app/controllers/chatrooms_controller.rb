class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(id: current_user.id)

  end

  def create
    @chatroom = Chatroom.new
    @chatroom.name =
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
end
