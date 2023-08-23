class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @items = Item.all

    if params[:brand].present?
      @items = @items.where(brand: params[:brand])
    end

    if params[:category].present?
      @items = @items.where(category: params[:category])
    end

    if params[:query].present?
      @items = @items.search_by_full_text(params[:query])
    end
  end

  def show
    @item = Item.find(params[:id])
    @booking = Booking.new
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
