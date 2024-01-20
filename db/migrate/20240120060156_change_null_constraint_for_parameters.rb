class ChangeNullConstraintForParameters < ActiveRecord::Migration[7.0]
  def change
    change_column_null :parameters, :food_id, true
    change_column_null :parameters, :equipment_id, true
  end
end
