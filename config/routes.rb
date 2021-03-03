Rails.application.routes.draw do
  resources :acquisitions
  resources :artworks
  resources :users

  get "/me", to: "users#me"
  post "/login", to: "users#login"
  post "/signup", to: "users#signup"

  post "/acquisitions", to: "acquisitions#create"
  get "/acquisitions", to: "acquisitions#index"
  post "/me", to: "users#acquisitions"
  delete "/acquisitions", to: "acquisitions#destroy"
  # get "/users", to: "users#acquisitions"
  
  post "/upload", to: "artworks#upload"
  patch "/update", to: "artworks#update"
  get "/users", to: "users#index"
  get "/acquisitions", to: "acquisitions#index"
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
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
