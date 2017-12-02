rails g devise:install
rails g model User username:string
rails g model Chatroom topic:string
rails g model Messaage msg:string user_id:integer chatroom_id:integer

# If default devise controllers & views needs to be modified
rails generate devise:controllers users
rails generate devise:views User


How to Establishing the WebSocket Connection?
1: Establish the Socket Connection: Server-Side

First, we need to mount the Action Cable server on a sub-URI of our main application.
In routes.rb
  mount ActionCable.server => '/cable'
Now Action Cable will be listening for WebSocket requests on ws://localhost:3000/cable

2: Establish the Socket Connection: Client-Side
In app/assets/javascripts/channels create a file: chatrooms.js.
Here define the client-side instance of our WebSocket connection.
In application.js add
//= require_tree ./channels

In development.rb 
  config.action_cable.url = "ws://localhost:3000/cable"


In application.html.erb
  <%= action_cable_meta_tag %>

How to Building the Channel?
1: Define the Channel
2: Broadcast to Channel