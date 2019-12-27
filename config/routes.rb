Rails.application.routes.draw do
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'users#welcome' , as: 'home'

  get 'index', to: 'users#index'

  get '/game', to: 'game#index' , as: 'index_game'
  get '/game/play', to: 'game#play'
  get 'test', to: 'users#test'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
