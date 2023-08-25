class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :item

  def rental_duration
    (to - from).to_i + 1
  end
end
