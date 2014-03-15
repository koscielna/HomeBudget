class SituationsController < ApplicationController
  def new
  end

  def create
    @situation = Situation.new(situation_params)
    @situation.save

    redirect_to dashboard_path
  end

  def index
    @situations = Situation.all

    redirect_to dashboard_path
  end

  def situation_params
    params.require(:situation).permit(:name)
  end
end
