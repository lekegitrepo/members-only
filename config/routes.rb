Rails.application.routes.draw do
  post 'sessions/new'

  resources :users
  resources :posts
  resources :sessions
end
