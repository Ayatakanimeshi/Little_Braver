class BraversController < ApplicationController
  before_action :authenticate_user!

  def new
    @braver = current_user.bravers.build
  end

  def index
    @bravers = current_user.bravers
  end

  def create
    @braver = current_user.bravers.build(braver_params)
    if @braver.save
      redirect_to bravers_path, notice: '勇者が正常に作成されました。'
    else
      render :new
    end
  end

  def destroy
    @braver.destroy
    redirect_to bravers_path, notice: '勇者が正常に削除されました。'
  end

  private

  def set_braver
    @braver = current_user.bravers.find(params[:id])
  end

  def braver_params
    params.require(:braver).permit(:name, :personality)
  end
end
