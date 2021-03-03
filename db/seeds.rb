# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
nanashi = { name: "Nanashi Paradis", address: "31 Rue de Paradis, 75010 Paris, France", phone_number: "33 1 40 22 05 55", category: "japanese" }
trippa = { name: "Trattoria Trippa", address: "Via Giorgio Vasari, 1, 20135 Milano MI", phone_number: "327 668 7908", category: "italian" }
antico_arco = { name: "Antico Arco", address: "Piazzale Aurelio, 7, 00152 Roma RM", phone_number: " 06 581 5274", category: "japanese" }
miam = { name: "Miam Miam", address: "Via Giorgio Vasari, 1, 20135 Milano MI", phone_number: "327 668 7908", category: "chinese" }
pizza = { name: "Pizza", address: "31 Rue de Paradis, 75010 Paris, France", phone_number: "33 1 40 22 05 55", category: "japanese" }

[nanashi, trippa, antico_arco, miam, pizza].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
