Rails.application.routes.draw do
  root 'sessions#new'

  get '/login', to: 'sessions#new'  # Define the login route
  post '/login', to: 'sessions#create'  # Define the route for handling login submissions

  get '/signup', to: 'users#new'  # Define the sign-up route
  post '/signup', to: 'users#create'  # Define the route for handling sign-up submissions

  resources :sessions, only: [:new, :create, :destroy]
  resources :places, only: [:index, :show, :new, :create]
  resources :entries, only: [:new, :create]

  # Additional routes for users
  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
end