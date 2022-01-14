class ActorsController < ApplicationController
  def single_actor
    actor = params[:id].to_i
    actor_id = Actor.find_by(id: actor)
    render json:actor_id.as_json
    # render json:{message:"Sanity"}
  end
  
end
