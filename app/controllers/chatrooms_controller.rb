class ChatroomsController < ApplicationController
  
  before_action :authenticate_user!

  def show
    @chatroom = Chatroom.find_by_id(params[:id])
    @message = Message.new
  end

  def create
  	@chatroom = Chatroom.new(chatroom_params)
    if @chatroom.save
      respond_to do |format|
        format.html { redirect_to root_path(), notice: 'chatroom created.' }
      end
    else
      respond_to do |format|
        format.js
      end
    end
  end

  private
  def chatroom_params
  	params.require(:chatroom).permit(:topic)
  end

end