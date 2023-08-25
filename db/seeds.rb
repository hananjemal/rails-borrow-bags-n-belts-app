# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Booking.destroy_all
Item.destroy_all

require "open-uri"
file = URI.open("https://res.cloudinary.com/ddicha2gs/image/upload/v1692680910/Mango_Saffiano-effect_small_shopper_bag_ehquai.png")
items = Item.new(name: "A", category: "belt", brand: "gucci", size: "M", color: "black", description: "90% brand new", price: 50, availability: true)
items.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
items.save!

file = URI.open("https://res.cloudinary.com/ddicha2gs/image/upload/v1692680913/zara_fabric_shopper_fimwzh.jpg")
items = Item.new(name: "A", category: "bag", brand: "Channel", size: "M", color: "blue", description: "90% brand new", price: 40, availability: true)
items.photo.attach(io: file, filename: "nes1.png", content_type: "image/png")
items.save!

file = URI.open("https://res.cloudinary.com/ddicha2gs/image/upload/v1692680903/OPHIDIA_GG_LARGE_TOTE_BAG_fczzbt.png")
items = Item.new(name: "A", category: "bag", brand: "Louis Vuitton", size: "L", color: "brown", description: "Little old", price: 35, availability: true)
items.photo.attach(io: file, filename: "nes2.png", content_type: "image/png")
items.save!

file = URI.open("https://res.cloudinary.com/ddicha2gs/image/upload/v1692680901/Versace_Medusa-buckle_belt_ud2fig.webp")
items = Item.new(name: "A", category: "belt", brand: "Prada", size: "M", color: "black", description: "never used", price: 15, availability: true)
items.photo.attach(io: file, filename: "nes3.png", content_type: "image/png")
items.save!

file = URI.open("https://res.cloudinary.com/ddicha2gs/image/upload/v1692680902/background_diana-light-nvQemFKRBUo-unsplash.jpg.crdownload_gfj5c1.jpg")
items = Item.new(name: "A", category: "bag", brand: "Hermès", size: "S", color: "blue", description: "90% brand new", price: 58, availability: true)
items.photo.attach(io: file, filename: "nes4.png", content_type: "image/png")
items.save!

file = URI.open("https://res.cloudinary.com/ddicha2gs/image/upload/v1692680900/Vanzetti_ggbp7o.webp")
items = Item.new(name: "A", category: "belt", brand: "Michael Kors", size: "S", color: "brown", description: "90% brand new", price: 20, availability: true)
items.photo.attach(io: file, filename: "nes5.png", content_type: "image/png")
items.save!

file = URI.open("https://res.cloudinary.com/ddicha2gs/image/upload/v1692680898/IsabelMarant_lecce_leather_belt_lyvjey.webp")
items = Item.new(name: "A", category: "belt", brand: "Gucci", size: "L", color: "red", description: "90% brand new", price: 25, availability: true)
items.photo.attach(io: file, filename: "nes6.png", content_type: "image/png")
items.save!

file = URI.open("https://res.cloudinary.com/ddicha2gs/image/upload/v1692680868/chanel_22_mini_handbag_pcgfc1.webp")
items = Item.new(name: "A", category: "bag", brand: "Chanel", size: "M", color: "white", description: "90% brand new", price: 150, availability: true)
items.photo.attach(io: file, filename: "nes7.png", content_type: "image/png")
items.save!

file = URI.open("https://res.cloudinary.com/ddicha2gs/image/upload/v1692680868/chanel_22_mini_handbag_pcgfc1.webp")
items = Item.new(name: "A", category: "bag", brand: "Chanel", size: "M", color: "white", description: "90% brand new", price: 150, availability: true)
items.photo.attach(io: file, filename: "nes7.png", content_type: "image/png")
items.save!

puts "items created"
