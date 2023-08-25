if @booking.persisted?
  json.res "ok"
else
  json.form render(partial: "bookings/form", formats: :html, locals: {item: @item, booking: @booking})
end
