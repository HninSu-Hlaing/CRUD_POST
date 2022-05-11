Rails.application.routes.draw do
  get "/index", to:"users#index"
  get "/user_list", to:"users#list"
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/search', to: 'users#search'
  get '/users/:id', to: "users#show"
  get '/users/:id', to: "users#update"
  get '/users/:id/edit', to: "users#edit"
  
  get '/post_list', to: 'post_tbles#index'
  get '/new_post', to: 'post_tbles#new'
  post '/new_post', to: 'post_tbles#create'
  get '/posts/:id/edit', to: "post_tbles#edit"
  get '/posts/:id', to: "post_tbles#update"
  root "users#index"
  resources :users
  resources :post_tbles
  resources :sessions, only: [:new, :create, :destroy]

  resources :post_tbles do
    collection{post :import}
  end
end
