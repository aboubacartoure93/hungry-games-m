class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :gender
      t.text :bio
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
