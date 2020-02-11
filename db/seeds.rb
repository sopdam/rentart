# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating seed"

# User.destroy_all
# Art.destroy_all


puts 'creating user'

User.create!(
  encrypted_password: "123",
  email: "h@h.com")

User.create!(
  encrypted_password: "123",
  email: "g@g.com")

User.create!(
  encrypted_password: "123",
  email: "a@a.com")

puts 'user created'

Art.create!(
  title: 'Mona Lisa',
  artist: 'Leonardo Da Vinci',
  description: 'The most famous painting in the world',
  price: '10000000',
  city: 'Le Louvre, Paris',
  dimensions: '40cm x 50cm',
  user_id: 1
  )

Art.create!(
  title: 'The Starry Night',
  artist: 'Van Gogh',
  description: 'Impressionism',
  price: '5000000',
  city: 'Amsterdam',
  dimensions: '35cm x 35cm',
  user_id: 2
)

Art.create!(
  title: 'Guernica',
  artist: 'Pablo Picasso',
  description: 'Cubist representation of the Guernica battle',
  price: '40000',
  city: '65 Alfred Road',
  dimensions: '35cm x 55cm',
  user_id: 3
)



puts "seed ended"
