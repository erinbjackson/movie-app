class Movie < ApplicationRecord
  validates :title, :plot, :year, presence: true, length: { minimum: 2}
  validates :title, uniqueness: true
  validates :runtime, numericality: true
  validates :plot, length: { maximum: 500 }

  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

  
end
