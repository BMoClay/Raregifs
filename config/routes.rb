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
  # get "/users", to: "users#acquisitions"
  
  post "/upload", to: "artworks#upload"
  patch "/update", to: "artworks#update"
  delete "/acquisitions", to: "acquisitions#delete"
  # delete "/acquisitions", to: "acquisitions#destroy"
  get "/users", to: "users#index"
  get "/users/:id/artworks", to: "users#artworks"
  get "/users/:id/acquisitions", to: "users#acquisitions"

  get "/acquisitions", to: "acquisitions#index"
  

  # delete "/me", to: "users#delete"
  # post "/me", to: "users#stash"
  # get "/users/:id/favorites", to: "users#favorites"

  # get "/favorites", to: "favorites#index"
  # delete "/favorites", to: "favorites#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
