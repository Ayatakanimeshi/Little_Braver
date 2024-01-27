class ScenesController < ApplicationController
    before_action :set_braver
  
    def scene1
      @foods = Food.order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def scene2
      @foods = Food.order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def scene3
      @foods = Food.order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def scene4
      @foods = Food.order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def scene5
      @foods = Food.order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def scene6
      @equipments = Equipment.where(category: 'armor').order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def scene7
      @equipments = Equipment.where(category: 'shield').order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def scene8
      @equipments = Equipment.where(category: 'helmet').order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def scene9
      @equipments = Equipment.where(category: 'accessory').order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def scene10
      @equipments = Equipment.where(category: 'weapon').order(Arel.sql('RANDOM()')).limit(3)
    end
  
    def apply_food
      food = Food.find(params[:food_id])
      @braver.parameter.food_parameters(food)
      next_scene_path = determine_next_scene_path
      redirect_to next_scene_path
    end

    def apply_equipment
      equipment = Equipment.find(params[:equipment_id])
      @braver.parameter.equip_parameters(equipment)
      next_scene_path = determine_next_scene_path
      redirect_to next_scene_path
    end
  
    private
  
    def set_braver
        braver_id = params[:id]
        
        # BraverをIDを使用して検索
        @braver = Braver.find(braver_id)
    end
  
    def determine_next_scene_path
        current_scene_number = params[:current_scene_number].to_i
      
        # 最後のシーン（scene10）の場合はBraverのインデックスページへリダイレクト
        if current_scene_number == 10
          return bravers_path
        else
          next_scene_number = current_scene_number + 1
          next_scene = "scene#{next_scene_number}"
          return public_send("scenes_#{next_scene}_braver_path", @braver)
        end
    end
  end
