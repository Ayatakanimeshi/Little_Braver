class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.string :name, null: false
      t.integer :rarity, null: false
      t.string :image, null: false
      t.references :braver, null: false, foreign_key: true

      t.timestamps
    end
  end
end
