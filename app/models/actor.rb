class Actor < ApplicationRecord
  validates :first_name, :last_name, presence: true, length: { minimum: 2}
  validates :known_for, presence: true
  validates :age, comparison: {greater_than: 13} 

  belongs_to :movie
  def what_is_plot
    movie.plot
  end
end
