class CreateDirectors < ActiveRecord::Migration[7.0]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :known_for
      t.integer :num_films

      t.timestamps
    end
  end
end
