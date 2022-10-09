Rails.application.routes.draw do
  mount ActionCable.server => "/cable"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get "/users", to: 'users#index'
  # get '/users/:id', to: 'users#show'

  resources :users, only: [:index, :create]
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  
  
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  # Room
  resources :rooms
  # Message
  resources :messages, only: [:index, :create, :update, :destroy]

end
