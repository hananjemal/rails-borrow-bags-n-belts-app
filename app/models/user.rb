class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # Renters bookings
  # Lessors items
  has_many :items
  has_many :bookings
  has_many :booked_items, through: :bookings, source: :items
end
