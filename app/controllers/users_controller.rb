class UsersController < ApplicationController
  
  def home
  	@chatrooms = Chatroom.all
  end

end