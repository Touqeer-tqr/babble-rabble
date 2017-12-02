class MessagesChannel < ApplicationCable::Channel  
  def subscribed
    stream_from 'messaages'
    p '*'*100
  end
end