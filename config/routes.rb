Rails.application.routes.draw do
  #post 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'

  resources :users
  resources :posts
  resources :sessions
end
