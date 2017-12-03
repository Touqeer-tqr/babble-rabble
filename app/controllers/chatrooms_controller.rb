class ChatroomsController < ApplicationController
  
  before_action :authenticate_user!

  def show
    @chatroom = Chatroom.find_by_id(params[:id])
    @message = Message.new
  end
end