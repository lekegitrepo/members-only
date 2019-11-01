Rails.application.routes.draw do
  #post 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :users
  resources :posts
  resources :sessions
end
