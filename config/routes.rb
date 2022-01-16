Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/single_actor/:id" => "actors#single_actor"
  get "/all_movies/" => "movies#all_movies"
  get "/single_movie/:id" => "movies#one_movie"
  get "/all_actors" => "movies#all_actors"
  get "/reverse" => "movies#reverse_order"
  get "/actor/:name" => "movies#show"
  get "/actor" => "movies#actor_show"
  post "/single_actor" => "movies#single_actor"
end
