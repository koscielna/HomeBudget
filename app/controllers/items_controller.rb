class ItemsController < ApplicationController
  def index
    @items = Item.all

    redirect_to situation
  end

  def create
    situation = Situation.find(params[:situation_id])
    @item = Item.new(item_params)
    @item.user_id = current_user[:id]
    @item.situation = situation
    @item.save

    redirect_to situation
  end

  def show
  end

  private

  def item_params
    params.require(:item).permit(:name, :amount)
  end
end
