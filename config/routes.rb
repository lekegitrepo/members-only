Rails.application.routes.draw do
  #get 'sessions#new'

  resources :users
  resources :posts
  resources :sessions
end
