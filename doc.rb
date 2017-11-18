rails g devise:install
rails g devise User username:string
rails g devise Chatroom topic:string
rails g model Messaage msg:string user_id:integer chatroom_id:integer
