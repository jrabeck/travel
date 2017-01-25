Rails.application.routes.draw do
 
   devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  
   # devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}


  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  delete '/comments/:id', to: 'comments#destroy'
  get '/', to: 'home#home'
  post 'pictures/add', to: 'images#create'
  get '/trips/new', to: 'trips#new'
  get '/trips/:id', to: 'trips#show'
  get 'stops/comments/:id', to: 'comments#destroy'
  delete '/stops/comments/:id', to: 'comments#destroy'
  get '/comments/:id', to: 'comments#destroy'
  post "/trips/:id/addtravelers", to: 'user_trips#new'
  

  # post '/login', to: 'sessions#create'
  # get '/signup', to: 'users#new'
  # post '/users', to: 'users#create'
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # get '/logout', to: 'sessions#destroy'

  get 'stops/index', to: "stops#index"
  patch "/trips/:id/archive", to: "trips#archive"
  get '/stops/:id', to: 'stops#show'
  get '/trips/:id/stop/new', to: 'stops#new'
  post '/trips/:id/stops', to: "stops#create"
  post '/trips/:id/comments', to: "comments#create"
  post '/stops/:id/comments', to: "comments#create"
  post '/trips', to: "trips#create"
  get '/users/index', to: "users#index"
  get '/users/:id', to: "users#show"
  get "/users/unfollow/:id", to: "follows#destroy"
  get "/users/follow/:id", to: "follows#create"
  post "/users/traveling", to: "users#traveling"

  get '/trip/:id/edit', to: "trips#edit"
  #update (same as create except saying updated)
  patch '/trips/:id', to: "trips#update"
  
  get "/testfeed", to: "users#testfeed"
  post "/searchall", to: "searches#all"
  get "/searchall", to: "searches#all"
  post "/searchusers/:searchterm", to: "searches#users"
  get "/searchusers/:searchterm", to: "searches#users"
  get "/trips/adduser", to: "trips#adduser"
  get "/trips/:id/edit", to: "trips#edit"
  patch "/trips/:id", to: "trips#update"
  get "/trips/:id/archive", to: "trips#archive"
  get "/trips/:id/unarchive", to: "trips#unarchive"
  post "/trips/:id/journal", to: "blogentries#create"
  post "/stops/:id/journal", to: "blogentries#create"
  get "/journals/:id", to: "blogentries#destroy"
  get "/stops/:id/archive", to: "stops#archive"
  get "/stops/:id/unarchive", to: "stops#unarchive"
  post "/trips/:id/stop/new", to: "stops#create"









end
