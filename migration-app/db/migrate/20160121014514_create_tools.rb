class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.string :title
      t.string :description
      t.string :serial_number

      t.timestamps null: false
    end
  end
end
