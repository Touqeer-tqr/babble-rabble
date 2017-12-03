class UsersController < ApplicationController
  
  def home
  	@chatrooms = Chatroom.all
  end

  def create 
    user = User.new(user_params)
    if user.save
      redirect_to user_session_path
    else
      redirect_to signup_path, flash[:notice] =  user.errors.messages
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :username, :password, :password_confirmation)
    end

end