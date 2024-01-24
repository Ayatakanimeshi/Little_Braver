class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.integer :rarity, null: false

      t.timestamps
    end
  end
end
