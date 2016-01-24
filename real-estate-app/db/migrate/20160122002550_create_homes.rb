class CreateHomes < ActiveRecord::Migration
  def change
    change_table :homes do |t|
      t.text :description
      t.integer :year_built
      t.decimal :square_feet
      t.float :bedrooms
      t.float :bathrooms
      t.float :floors
      t.string :availability
      t.decimal :price

      t.timestamps null: false
    end
  end
end
