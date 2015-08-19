class CreateMoviesttts < ActiveRecord::Migration
  def change
    create_table :moviesttts do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :active

      t.timestamps null: false
    end
  end
end
