class AddSomeStuffToTools < ActiveRecord::Migration
  def change
    change_table :tools do |t|
      t.rename :title, :name
      t.change :description, :text
      t.remove :serial_number, :string
      t.change :price, :decimal, precision: 8, scale: 2
    end
  end
end
