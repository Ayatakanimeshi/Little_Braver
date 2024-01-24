class AddAttributesToEquipment < ActiveRecord::Migration[7.0]
  def change
    add_column :equipment, :atk, :integer
    add_column :equipment, :def, :integer
    add_column :equipment, :spd, :integer
    add_column :equipment, :int, :integer
    add_column :equipment, :hp, :integer
    add_column :equipment, :mp, :integer
  end
end
