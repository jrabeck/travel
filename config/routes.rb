Rails.application.routes.draw do
 
   devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
   # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}


  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'home#home'

  get '/trips/new', to: 'trips#new'
  get '/trips/:id', to: 'trips#show'


  # post '/login', to: 'sessions#create'
  # get '/signup', to: 'users#new'
  # post '/users', to: 'users#create'
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # get '/logout', to: 'sessions#destroy'

  get 'stops/index', to: "stops#index"
  get '/stops/:id', to: 'stops#show'
  get '/trips/:id/stop/new', to: 'stops#new'
  post '/trips/:id/stops', to: "stops#create"
  post '/trips', to: "trips#create"
  get '/users/index', to: "users#index"
  get '/users/:id', to: "users#show"
  get "/users/follow/:id", to: "follows#create"
  delete "users/follow/:id", to: "follows#destroy"

  get '/trip/:id/edit', to: "trips#edit"
  #update (same as create except saying updated)
  patch '/trips/:id', to: "trips#update"
  
  get"/testfeed", to: "users#testfeed"




end
