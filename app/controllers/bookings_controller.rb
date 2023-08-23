class BookingsController < ApplicationController
  def create
      @item = Item.find(params[:item_id])
      @booking = Booking.new(booking_params)
      @booking.item = @item
      @booking.user = current_user
      # @movie = Movie.find(params[:bookmark][:movie])
      if @booking.save
        redirect_to root_path
      else
        puts @booking.errors.messages
        render "items/show", status: :unprocessable_entity
      end
  end

  def booking_params
    params.require(:booking).permit(:item_id, :user_id, :from, :to)
  end
end
