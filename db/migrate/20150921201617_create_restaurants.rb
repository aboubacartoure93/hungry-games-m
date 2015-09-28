class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :cuisine
      t.integer :budget
      t.string :phone

      t.timestamps null: false
    end
  end
end
