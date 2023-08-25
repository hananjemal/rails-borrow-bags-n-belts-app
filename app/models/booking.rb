require 'date'
class Booking < ApplicationRecord

  belongs_to :user
  belongs_to :item



  def rental_duration
    (to - from).to_i + 1
  end


  validates :from, presence: true
  validates :to, presence: true
  validate :valid_date_range

  before_create :update_item_availability
  before_destroy :release_item_availability


  def valid_date_range
    if from.present? && to.present? && from > to
      errors.add(:to, "invalid date")
      errors.add(:from, "invalid date")
    elsif from < Date.today || to < Date.today
      errors.add(:from, "invalid date")
      errors.add(:to, "invalid date")
    elsif item.availability == false
      errors.add(:from, "item already booked")
      errors.add(:to, "item already booked")
    end

  end


  private

  def update_item_availability
    item.update(availability: false)
  end

  def release_item_availability
    item.update(availability: true)
  end
end
