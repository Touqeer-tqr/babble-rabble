Rails.application.routes.draw do

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  
  devise_for :users
  resources :chatrooms
  resources :messaages

  root 'users#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
