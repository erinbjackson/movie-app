class MoviesController < ApplicationController
  def all_movies
    movies = Movie.all
    render json: movies.as_json
    
  end
  def one_movie
    movie = params[:id].to_i
    movie_id = Movie.find_by(id: movie)
    render json:movie_id
  end
  def all_actors
    actors = Actor.all
    render json: actors.as_json
  end
  def reverse_order
    movie_or = Movie.order('title DESC').reverse_order
    render json: movie_or.as_json 
  end
  def show
    name = params[:name]
    actor = Actor.find_by(first_name: name)
    render json: {message: actor }
  end
  def actor_show
    name = params["last_name"]
    actor = Actor.find_by(last_name: name)
    render json: {message: actor}    
  end
  def single_actor
    name = params[:name]
    actor = Actor.find_by(first_name: name)
    render json: {message: actor}
  end
end
