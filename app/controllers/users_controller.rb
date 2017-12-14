class UsersController < ApplicationController
  
  def home
  	@chatrooms = Chatroom.all
    @chatroom = Chatroom.new if user_signed_in?
  end

end