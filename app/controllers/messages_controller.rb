class MessagesController < ApplicationController

  def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.msg,
        user: message.user.username
      head :ok
    end
  end

  private

    def message_params
      params.require(:message).permit(:msg, :chatroom_id)
    end
end