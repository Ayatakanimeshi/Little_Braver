class Parameter < ApplicationRecord
  belongs_to :braver, optional: true # 関連づけられたモデルが必須ではないという意味

  def increment_parameters(food)
    self.atk += food.atk
    self.def += food.def
    self.spd += food.spd
    self.hp += food.hp
    self.int += food.int
    self.mp += food.mp
    save
  end

  def equip(equipment)
    parameter.atk += equipment.atk
    parameter.def += equipment.def
    parameter.spd += equipment.spd
    parameter.hp += equipment.hp
    parameter.int += equipment.int
    parameter.mp += equipment.mp
    parameter.save
  end
end
