# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning up database"
Restaurant.destroy_all
puts "Database cleaned"

puts "Creating restaurants"
50.times do 
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name, 
    address: Faker::Address.city,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample    
    )
  puts "restaurant #{restaurant.id} is created"
end

puts "Done"