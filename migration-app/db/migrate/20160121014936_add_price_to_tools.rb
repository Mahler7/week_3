class AddPriceToTools < ActiveRecord::Migration
  def change
    add_column :tools, :price, :integer
  end
end
