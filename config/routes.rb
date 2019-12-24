Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'users#welcome' , as: 'home'

  get '/users/new', to: 'users#new' , as: 'new_user'
  post '/users/new', to: 'users#create'

  get '/game/start', to: 'game#start' , as: 'start_game'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
