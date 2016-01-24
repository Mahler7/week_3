class RemoveStuffToHome < ActiveRecord::Migration
  def change
    change_table :homes do |t|
      t.remove :floors, :string
    end
  end
end
