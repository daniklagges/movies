class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
