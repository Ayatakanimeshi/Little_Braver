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

  alias_attribute :dfe, :def

  def total_score
    hp + mp + atk + dfe + spd + int
  end

  def highest_parameter_job
    parameters = {
      "HP" => hp,
      "MP" => mp,
      "こうげき" => atk,
      "ぼうぎょ" => dfe, # 予約語を避けるための変更が必要な場合は、適切な属性名に
      "すばやさ" => spd,
      "かしこさ" => int
    }
    
    highest = parameters.max_by { |_, value| value }
    case highest.first
    when "HP"
      "せんし"
    when "MP"
      "まほうつかい" 
    when "かしこさ"
      "そうりょ"
    when "こうげき"
      "ぶとうか"
    when "ぼうぎょ"
      "きし"
    when "すばやさ"
      "とうぞく"
    else
      "村人"
    end
  end
end
