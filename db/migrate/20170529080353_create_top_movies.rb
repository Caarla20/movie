class CreateTopMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :top_movies do |t|
      t.string :name
      t.string :main_actor
      t.integer :stars

      t.timestamps
    end
  end
end
