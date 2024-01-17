# app/controllers/heroes_controller.rb
class BraversController < ApplicationController
    def new
      @braver = Braver.new
    end
  
    def create
      @braver = Braver.new(braver_params)
      if @braver.save
        redirect_to @braver, notice: '勇者が正常に作成されました。'
      else
        render :new
      end
    end
  
    private
  
    def braver_params
      params.require(:braver).permit(:name, :personality, :user_id)
    end
  end
  