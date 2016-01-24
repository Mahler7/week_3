class RemoveFoorsFromHome < ActiveRecord::Migration
  def change
    remove_column :homes, :floors, :float
  end
end
