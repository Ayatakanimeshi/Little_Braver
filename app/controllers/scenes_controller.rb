class ScenesController < ApplicationController
    before_action :set_braver
  
    def scene1
        @foods = Food.order("RANDOM()").limit(3)
    end

    def scene2
        @foods = Food.order("RANDOM()").limit(3)
    end

    def scene3
        @foods = Food.order("RANDOM()").limit(3)
    end

    def scene4
        @foods = Food.order("RANDOM()").limit(3)
    end

    def scene5
        @foods = Food.order("RANDOM()").limit(3)
    end

    def scene6
        @equipments = Equipment.where(category: 'armor').order("RANDOM()").limit(3)
      end
    
      def scene7
        @equipments = Equipment.where(category: 'shield').order("RANDOM()").limit(3)
      end
    
      def scene8
        @equipments = Equipment.where(category: 'helmet').order("RANDOM()").limit(3)
      end
    
      def scene9
        @equipments = Equipment.where(category: 'accessory').order("RANDOM()").limit(3)
      end
    
      def scene10
        @equipments = Equipment.where(category: 'weapon').order("RANDOM()").limit(3)
      end

    private
  
    def set_braver
        braver_id = params[:id]
        
        # BraverをIDを使用して検索
        @braver = Braver.find(braver_id)
    end
  end
  