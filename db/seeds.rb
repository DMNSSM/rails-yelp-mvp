# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "012354321", category: "chinese" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "012456321", category: "italian" }
fritz = { name: "Fritz", address: "Streetstraße 6", phone_number: "044161", category: "belgian" }
tablon = { name: "Tablon", address: "Urmeneta 661", phone_number: "04416261", category: "french" }
lomiton = { name: "Lomiton", address: "Illapel 7", phone_number: "2343211", category: "japanese" }

[dishoom, pizza_east, fritz, tablon, lomiton].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
