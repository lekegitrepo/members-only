Rails.application.routes.draw do
  root 'posts#index'
  get '/user/new', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'
  resources :users
  resources :posts
  resources :sessions
end
