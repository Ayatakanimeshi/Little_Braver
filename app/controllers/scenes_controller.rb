class ScenesController < ApplicationController

    def select_food
        scene = Scene.find(params[:scene_id])
        food = Food.find(params[:food_id])
        current_user.heroes.first.parameter.increment_parameters(food)
    
        redirect_to next_scene_path(scene)
    end

    def scene1
        @scene = Scene.find(params[:id])
        @foods = Food.order("RANDOM()").limit(3)
      # シーン1に関するロジック
    end
  
    def scene2
        @scene = Scene.find(params[:id])
        @foods = Food.order("RANDOM()").limit(3)
      # シーン2に関するロジック
    end
  
    def scene3
        @scene = Scene.find(params[:id])
        @foods = Food.order("RANDOM()").limit(3)
      
    end
    
    def scene4
        @scene = Scene.find(params[:id])
        @foods = Food.order("RANDOM()").limit(3)
      
    end
    

    def scene5
        @scene = Scene.find(params[:id])
        @foods = Food.order("RANDOM()").limit(3)
      
    end

    def scene6
        @scene = Scene.find(params[:id])
        @equipment = Equipment.order("RANDOM()").limit(3)
      
    end

    def scene7
        @scene = Scene.find(params[:id])
        @equipment = Equipment.order("RANDOM()").limit(3)
      
    end
    
    def scene8
        @scene = Scene.find(params[:id])
        @equipment = Equipment.order("RANDOM()").limit(3)
      
    end

    def scene9
        @scene = Scene.find(params[:id])
        @equipment = Equipment.order("RANDOM()").limit(3)
      
    end

    def scene10
        @scene = Scene.find(params[:id])
        @equipment = Equipment.order("RANDOM()").limit(3)
      
    end
    # 他のシーンのアクションも同様に定義
  end
  