class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name, null: false
      t.integer :rarity, null: false
      t.string :image, null: false

      t.timestamps
    end
  end
end
