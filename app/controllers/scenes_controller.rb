class ScenesController < ApplicationController
    before_action :set_braver
  
    def scene1
        @foods = Food.order("RANDOM()").limit(3)
    end

    private
  
    def set_braver
        braver_id = params[:id]
        
        # BraverをIDを使用して検索
        @braver = Braver.find(braver_id)
    end
  end
  