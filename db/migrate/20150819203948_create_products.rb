class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 12, scale: 3
      t.boolean :active

      t.timestamps null: false
    end
  end
end
