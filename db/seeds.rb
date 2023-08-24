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

items = Item.create(category: "belt", brand: "gucci", size: "M", color: "black", description: "90% brand new", price: 50, picture_url: "https://media.istockphoto.com/id/492845800/photo/black-belt.webp?b=1&s=170667a&w=0&k=20&c=zRgabxSREm66MUGU6iP41JZkJPrGWhrnRSbTEc4nOMo=", availability: true)
items = Item.create(category: "bag", brand: "chanel", size: "L", color: "pink", description: "50% brand new", price: 60, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "belt", brand: "chanel", size: "L", color: "pink", description: "50% brand new", price: 50, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "bag", brand: "chanel", size: "L", color: "pink", description: "50% brand new", price: 10, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "belt", brand: "chanel", size: "S", color: "pink", description: "50% brand new", price: 50, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "bag", brand: "chanel", size: "S", color: "pink", description: "50% brand new", price: 50, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "bag", brand: "chanel", size: "L", color: "pink", description: "50% brand new", price: 55, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "bag", brand: "chanel", size: "S", color: "pink", description: "50% brand new", price: 70, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "belt", brand: "gucci", size: "M", color: "black", description: "90% brand new", price: 10, picture_url: "https://media.istockphoto.com/id/492845800/photo/black-belt.webp?b=1&s=170667a&w=0&k=20&c=zRgabxSREm66MUGU6iP41JZkJPrGWhrnRSbTEc4nOMo=", availability: true)
items = Item.create(category: "bag", brand: "chanel", size: "S", color: "pink", description: "50% brand new", price: 50, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "belt", brand: "chanel", size: "S", color: "pink", description: "50% brand new", price: 25, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "bag", brand: "chanel", size: "S", color: "pink", description: "50% brand new", price: 30, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)
items = Item.create(category: "belt", brand: "chanel", size: "S", color: "pink", description: "50% brand new", price: 20, picture_url: "https://images.unsplash.com/photo-1566150905458-1bf1fc113f0d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8YmFnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60", availability: true)

puts "items created"
