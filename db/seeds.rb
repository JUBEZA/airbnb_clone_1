# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  email: 'test@example.com',
  password: 'password',
  password_confirmation: 'password',
  name: 'Test User'
)

properties = [
  { title: 'Cozy Cottage', description: 'A cozy cottage in the countryside', price: 100.0, location: 'Countryside', user_id: User.first.id },
  { title: 'Modern Apartment', description: 'A modern apartment in the city center', price: 150.0, location: 'City Center', user_id: User.first.id },
  { title: 'Beach House', description: 'A beautiful beach house with ocean view', price: 200.0, location: 'Beach', user_id: User.first.id }
]

properties.each do |property|
  Property.create!(property)
end
