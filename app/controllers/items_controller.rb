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
    if @item.save
      redirect_to items_path
    else
      render "items/new", status: :unprocessable_entity
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to profile_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to profile_path
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params) # Will raise ActiveModel::ForbiddenAttributesError
    redirect_to profile_path
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to profile_path
  end

  private

  def item_params
    params.require(:item).permit(:category, :brand, :size, :color, :description, :price, :availability, :photo)
  end

end
