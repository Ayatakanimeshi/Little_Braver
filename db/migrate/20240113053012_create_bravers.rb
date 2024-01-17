class CreateBravers < ActiveRecord::Migration[7.0]
  def change
    create_table :bravers do |t|
      t.string :name, null: false
      t.string :personality, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
