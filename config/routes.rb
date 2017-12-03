Rails.application.routes.draw do

  root 'users#home'
  
  devise_for :users
  resources :chatrooms
  resources :messages

  post '/signup', to: "users#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
end
