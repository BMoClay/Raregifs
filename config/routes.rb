Rails.application.routes.draw do
  resources :acquisitions
  resources :artworks
  resources :users
  #comment out users resources and do custom routes:
  # post "/login", to: "auth#login"
  # or just do one specifically for users login
  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  post "/acquisition", to: "acquisitions#create"
  get "/acquisition", to: "acquisitions#index"
  post "/upload", to: "artworks#upload"
  patch "/update", to: "artworks#update"
  # post "/upload", to: "artworks#create"
  get "/me", to: "users#me"
  
  # post "/login", to: "users#login"
  # get "/artworks", to: "artworks"
  # get '/users', to: 'users#show', as: 'users'  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
