Rails.application.routes.draw do
  resources :acquisitions
  resources :artworks
  resources :users

  get "/me", to: "users#me"
  post "/login", to: "users#login"
  post "/signup", to: "users#signup"

  post "/acquisitions", to: "acquisitions#create"
  get "/acquisitions", to: "acquisitions#index"
  
  post "/upload", to: "artworks#upload"
  patch "/update", to: "artworks#update"

  get "/users", to: "users#index"
  get "/users/:id/acquisitions", to: "users#acquisitions"

  get "/acquisitions", to: "acquisitions#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
