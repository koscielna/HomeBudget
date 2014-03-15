class SituationsController < ApplicationController
  def index
    @situations = Situation.all

    redirect_to dashboard_path
  end

  def new
  end

  def create
    @situation = Situation.new(situation_params)
    @situation.owner_id = current_user[:id]
    @situation.save

    redirect_to dashboard_path
  end

  def show
    @situation = Situation.find(params[:id])
    @owner = User.find(@situation.owner_id)
  end

  private

  def situation_params
    params.require(:situation).permit(:name)
  end
end
