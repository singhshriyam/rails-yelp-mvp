# db/seeds.rb

puts "Cleaning up database..."
Restaurant.destroy_all
puts "Database cleaned!"

puts "Creating restaurants..."

Restaurant.create!(
  name: "Le Petit Chef",
  address: "123 Main St, Cologne, Germany",
  phone_number: "+49 221 1234567",
  category: "french"
)

Restaurant.create!(
  name: "La Dolce Vita",
  address: "456 High St, Cologne, Germany",
  phone_number: "+49 221 7654321",
  category: "italian"
)

Restaurant.create!(
  name: "Sakura",
  address: "789 Elm St, Cologne, Germany",
  phone_number: "+49 221 9876543",
  category: "japanese"
)

Restaurant.create!(
  name: "Wok 'n Roll",
  address: "321 Oak St, Cologne, Germany",
  phone_number: "+49 221 6543210",
  category: "chinese"
)

Restaurant.create!(
  name: "Brussels Bistro",
  address: "987 Maple St, Cologne, Germany",
  phone_number: "+49 221 4321098",
  category: "belgian"
)

puts "Finished creating restaurants!"
