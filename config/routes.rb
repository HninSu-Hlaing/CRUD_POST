Rails.application.routes.draw do
  get "/index", to:"users#index"
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
  
  get '/posts', to: 'post_tbles#index'
  get '/new_post', to: 'post_tbles#new'
  post '/new_post', to: 'post_tbles#create'
  get '/users/:id', to: "post_tbles#show"
  get '/posts/:id/edit', to: "post_tbles#edit"
  get '/posts/:id', to: "post_tbles#update"
  root "users#index"
  resources:users
  resources:post_tbles
  resources :sessions, only: [:new, :create, :destroy]
end
