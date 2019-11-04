Rails.application.routes.draw do
  root 'posts#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'

  #get 'posts', to: 'posts#index'
  #post 'sessions/new'

  resources :users
  resources :posts
  resources :sessions
end
