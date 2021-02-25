Rails.application.routes.draw do
  resources :acquisitions
  resources :artworks
  resources :users

  # get "/users", to: "users"
  # post "/login", to: "users#login"
  # get "/artworks", to: "artworks"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/users', to: 'users#show', as: 'users'
end
