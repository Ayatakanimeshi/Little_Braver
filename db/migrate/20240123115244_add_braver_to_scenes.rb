class AddBraverToScenes < ActiveRecord::Migration[7.0]
  def change
    add_reference :scenes, :braver, foreign_key: true
  end
end
