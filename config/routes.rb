Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  put "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"
#Routes for Actors
  get "/actors" => "actors#index"
  post "/actors" => "actors#create"
  get "/actors/:id" => "actors#show"
  put "/actors/:id" => "actors#update"
  delete "/actors/:id" => "actors#destroy"

#Routes for Users
  post "/users" => "users#create"
  

  #Sessions routes
  post "/sessions" => "sessions#create"
  
end
