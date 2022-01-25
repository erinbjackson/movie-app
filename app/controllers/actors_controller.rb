class ActorsController < ApplicationController
  def index
    actor = Actor.all
    render json: actor
  end
  
  def create
    actor = Actor.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    known_for: params[:known_for],
    age: params[:age],
    gender: params[:gender],
    movie_id: params[:movie_id]
    )
    if actor.save
      render json: actor
    else
      render json: {errors: actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    actor = Actor.find(params[:id])
    render json: actor
  end

  def update 
    actor = Actor.find(params[:id])
    actor.first_name = params[:first_name] || actor.first_name
    actor.last_name = params[:last_name] || actor.last_name
    actor.known_for = params[:known_for] || actor.known_for
    actor.age = params[:age] || actor.age
    actor.gender = params[:gender] || actor.gender
    actor.movie_id = params[:movie_id] || actor.movie_id
    if actor.save
      render json: actor
    else
      render json: {errors: actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    actor = Actor.find_by(id: params[:id])
    actor.delete
    render json: {message: "We have deleted #{actor.first_name} from your database."}
  end
end
