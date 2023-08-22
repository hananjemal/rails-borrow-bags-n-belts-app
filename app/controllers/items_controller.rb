class ItemsController < ApplicationController
  def index
    @items = Item.all
    @items = @items.where(brand: params[:search]) if params[:search].present?
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    # No need for app/views/restaurants/create.html.erb
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:category, :brand, :size, :color, :description, :price, :availability, :photo)
  end

end
