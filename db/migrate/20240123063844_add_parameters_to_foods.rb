class AddParametersToFoods < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :atk, :integer
    add_column :foods, :def, :integer
    add_column :foods, :spd, :integer
    add_column :foods, :hp, :integer
    add_column :foods, :int, :integer
    add_column :foods, :mp, :integer
  end
end
