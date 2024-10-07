class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.integer :rented_movie_id

      t.timestamps
    end
    add_foreign_key :customers, :movies, column: :rented_movie_id
  end
end
