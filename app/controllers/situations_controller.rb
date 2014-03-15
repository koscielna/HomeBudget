class SituationsController < ApplicationController
  def index
    @situations = Situation.all

    redirect_to dashboard_path
  end

  def new
  end

  def create
    @situation = Situation.new(situation_params)
    @situation.user = current_user
    @situation.save

    redirect_to dashboard_path
  end

  def show
    @situation = Situation.find(params[:id])
    @owner = @situation.user
  end

  private

  def situation_params
    params.require(:situation).permit(:name)
  end
end
