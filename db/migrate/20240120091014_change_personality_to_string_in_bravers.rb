class ChangePersonalityToStringInBravers < ActiveRecord::Migration[7.0]
  def change
    change_column :bravers, :personality, :integer, using: 'personality::integer'
  end
end
