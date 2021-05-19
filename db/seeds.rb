# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0784-232341", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0784-232341", category: "italian"  }
taperia_mayor = { name: "Taperia Mayor", address: "Calle Mayor 55, Madrid 20421", phone_number: "+34-0274632", category: "belgian" }
spaccanapoli =  { name: "Spaccanapoli", address: "Via San Vitale 23, Bologna 40679", phone_number: "0784-232916", category: "french" }
futura = { name: "Futura", address: "Frankfurter Allee, 10390, Berlin", phone_number: "0159-1245827", category: "chinese" }
canne_al_vento =  { name: "Canne al vento", address: "Viale Costituzione, Nuoro, 01800", phone_number: "0784-323409", category: "italian" }

[ dishoom, taperia_mayor, pizza_east, spaccanapoli, futura, canne_al_vento ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
