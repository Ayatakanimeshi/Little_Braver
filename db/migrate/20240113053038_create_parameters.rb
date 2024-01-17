class CreateParameters < ActiveRecord::Migration[7.0]
  def change
    create_table :parameters do |t|
      t.integer :atk, null: false
      t.integer :def, null: false
      t.integer :spd, null: false
      t.integer :hp, null: false
      t.integer :int, null: false
      t.integer :mp, null: false
      t.references :braver, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.references :equipment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
