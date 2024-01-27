class Parameter < ApplicationRecord
  belongs_to :braver, optional: true # 関連づけられたモデルが必須ではないという意味

  def food_parameters(food)
    self.atk += food.atk
    self.def += food.def
    self.spd += food.spd
    self.hp += food.hp
    self.int += food.int
    self.mp += food.mp
    save
  end

  def equip_parameters(equipment)
    self.atk += equipment.atk
    self.def += equipment.def
    self.spd += equipment.spd
    self.hp += equipment.hp
    self.int += equipment.int
    self.mp += equipment.mp
    save
  end
end
