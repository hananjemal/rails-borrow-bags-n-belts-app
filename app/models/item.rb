class Item < ApplicationRecord
  BRANDS = ["Gucci", "Louis Vuitton", "Chanel", "Prada", "Hermès", "Coach", "Michael Kors"]
  COLORS = ["black", "white", "brown", "green", "red", "grey", "blue"]
  SIZE = ["small", "medium", "large"]
  has_one_attached :photo
  include PgSearch::Model
  pg_search_scope :search_by_full_text, against: [ :brand, :category, :color, :size, :price ], using: {
    tsearch: { prefix: true }
  }
end
