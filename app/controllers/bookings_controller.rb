class BookingsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @booking = Booking.new(booking_params)
    @booking.item = @item
    @booking.user = current_user
    respond_to do |format|
      if @booking.save
        format.html { redirect_to items_path}
        format.json # Follows the classic Rails flow and look for a create.json view
      else
        format.html { render "items/show", status: :unprocessable_entity }
        format.json # Follows the classic Rails flow and look for a create.json view
      end
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path
  end

  def booking_params
    params.require(:booking).permit(:item_id, :user_id, :from, :to)
  end
end
