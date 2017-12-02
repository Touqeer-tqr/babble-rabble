class MessaagesController < ApplicationController

  def create
    message = Messaage.new(message_params)
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
      params.require(:messaage).permit(:msg, :chatroom_id)
    end
end