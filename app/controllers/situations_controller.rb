class SituationsController < ApplicationController
  def index
    @situations = Situation.all

    redirect_to dashboard_path
  end

  def new
  end

  def create
    @situation = Situation.new(situation_params)
    @situation.owner = current_user
    @situation.save

    redirect_to dashboard_path
  end

  def show
    @situation = Situation.find(params[:id])
    @owner = @situation.owner
  end

  def attach
    @user = User.find_by(email: params[:email])
    @situation = Situation.find(params[:id])

    if @user
      Participation.find_or_create_by(user_id: @user.id, situation_id: @situation.id)
    end

    redirect_to @situation
  end

  private

  def situation_params
    params.require(:situation).permit(:name)
  end
end
