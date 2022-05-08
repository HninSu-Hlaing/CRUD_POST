Rails.application.routes.draw do
  get "/index", to:"users#index"
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  get '/posts', to: 'post_tbles#index'
  get '/new_post', to: 'post_tbles#new'
  post '/new_post', to: 'post_tbles#create'
  root "users#index"
  resources:users
  resources:post_tbles
  resources :sessions, only: [:new, :create, :destroy]
end
