Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'home#home'

  get '/trips/new', to: 'trips#new'
  get '/trips/:id', to: 'trips#show'

  post '/login', to: 'sessions#create'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/stops/:id', to: 'stops#show'
  get "/trips/:id/stop/new", to: 'stops#new'
  post '/trips/:id/stops', to: "stops#create"
  post '/trips', to: "trips#create"

  get '/users/:id', to: "users#show"
end
