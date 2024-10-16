# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."
Restaurant.create!(name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: 33678979, category: "Indian")
puts "Created Dishoom"
Restaurant.create!(name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: 6453247, category: "Italian")
puts "Created Pizza East"

# 3. Display a message 🎉
puts "Finished! Created #{Restaurant.count} restaurants."
