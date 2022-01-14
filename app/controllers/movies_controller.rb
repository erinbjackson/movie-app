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
  def reverse_order
    movie_or = Movie.order('title ASC').reverse_order
    render json: movie_or.as_json 
    
  end
end
