Rails.application.routes.draw do
  #post 'sessions/new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#delete'
  get 'posts', to: 'posts#index'

  resources :users
  resources :posts, only: %i[new create index]
  resources :sessions
end
