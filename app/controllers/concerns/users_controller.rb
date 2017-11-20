class UsersController < ApplicationController
  
  def home
  	@chatrooms = Chatroom.all.collect(&:topic)
  end

end