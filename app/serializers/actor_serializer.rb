class ActorSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :movie_id, :what_is_plot

  belongs_to :movie

end
