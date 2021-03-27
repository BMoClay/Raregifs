Rails.application.routes.draw do
  resources :comments
  resources :acquisitions
  resources :artworks
  resources :users

  get "/me", to: "users#me"
  patch "/me", to: "users#update"
  get "/users", to: "users#index"
  post "/login", to: "users#login"
  post "/signup", to: "users#signup"
  get "/acquisitions", to: "acquisitions#index"
  get "/artworks", to: "artworks#index"
  post "/me", to: "users#acquisitions"
  post "/acquisitions", to: "acquisitions#create"
  delete "/acquisitions", to: "acquisitions#destroy"

  #delete "/users", to: "users#destroy"
  delete "/me", to: "users#destroy"

  post "/comments", to: "comments#create"
  
  post "/upload", to: "artworks#upload"
  patch "/update", to: "artworks#update"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end












 # delete "/acquisitions", to: "acquisitions#destroy"
  # delete "/acquisitions", to: "acquisitions#delete"

  # get "/users/:id/artworks", to: "users#artworks"
  # get "/users/:id/artworks/:id", to: "artworks#artworks"
  # get "/users/:id/acquisitions", to: "users#acquisitions"
  # get "/users/:id/acquisitions/:id", to: "users#acquisition"
  # delete "/users/:id/artworks/:id" to: "artworks#delete"

  

  # delete "/me", to: "users#delete"
  # post "/me", to: "users#stash"
  # get "/users/:id/favorites", to: "users#favorites"

  # get "/favorites", to: "favorites#index"
  # delete "/favorites", to: "favorites#destroy"