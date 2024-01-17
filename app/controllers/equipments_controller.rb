# app/controllers/equipments_controller.rb
class EquipmentsController < ApplicationController
  def index
    @equipments = Equipment.all
  end

  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      redirect_to equipments_path, notice: '装備品が正常に作成されました。'
    else
      render :new
    end
  end

  def edit
    @equipment = Equipment.find(params[:id])
  end

  def update
    @equipment = Equipment.find(params[:id])
    if @equipment.update(equipment_params)
      redirect_to equipments_path, notice: '装備品が正常に更新されました。'
    else
      render :edit
    end
  end

  def destroy
    @equipment = Equipment.find(params[:id])
    @equipment.destroy
    redirect_to equipments_path, notice: '装備品が正常に削除されました。'
  end

  private

  def equipment_params
    params.require(:equipment).permit(:name, :image_url, :atk, :def, :spd, :hp, :int, :mp)
  end
end
