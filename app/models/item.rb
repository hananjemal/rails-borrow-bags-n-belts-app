class Item < ApplicationRecord
  BRANDS = ["Gucci", "Louis Vuitton", "Chanel", "Prada", "Hermès", "Coach", "Michael Kors", "other"]
  COLORS = ["black", "white", "brown", "green", "red", "grey", "blue", "other"]
  SIZE = ["small", "medium", "large"]
  CATEGORY = ["Bag", "Belt"]
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_full_text, against: [ :brand, :category, :color, :size, :price ], using: {
    tsearch: { prefix: true }
  }
  has_many :bookings, dependent: :destroy

  validates :brand, :category, :name, :color, :size, :price, :photo, :description, presence: true

end
