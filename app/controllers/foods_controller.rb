# app/controllers/foods_controller.rb
class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to foods_path, notice: '食べ物が正常に作成されました。'
    else
      render :new
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to foods_path, notice: '食べ物が正常に更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path, notice: '食べ物が正常に削除されました。'
  end


  private

  def food_params
    params.require(:food).permit(:name, :image_url, :parameter_attributes)
  end
end
