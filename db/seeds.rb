# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Art.destroy_all

puts 'Creating art pieces...'

# arts = Art.create([
#   {title: 'Mona Lisa', artist: 'Leonardo Da Vinci', description: 'The most famous painting in the world', price: 1000000, city: 'Le Louvre, Paris', dimensions: '40cm x 50cm'},
#   {title: 'The Starry Night', artist: 'Van Gogh', description: 'Impressionism', price: 50000, city: 'Amsterdam', dimensions: '35cm x 35cm'},
#   {title: 'Guernica', artist: 'Pablo Picasso', description: 'Cubist representation of the Guernica battle', price: 40000, city: '65 Alfred Road', dimensions: '35cm x 55cm'},
#   {title: 'The Persistance', artist: 'Salvador Dali', description: 'Surrealism taking over persistance', price: 10000, city: 'Madrid, Spain', dimensions: '40cm x 50cm'}
# ])

Art.create(title: 'Mona Lisa', artist: 'Leonardo Da Vinci', description: 'The most famous painting in the world', price: 1000000, city: 'Le Louvre, Paris', dimensions: '40cm x 50cm')
Art.create(title: 'The Starry Night', artist: 'Van Gogh', description: 'Impressionism', price: 50000, city: 'Amsterdam', dimensions: '35cm x 35cm')
Art.create(title: 'Guernica', artist: 'Pablo Picasso', description: 'Cubist representation of the Guernica battle', price: 40000, city: '65 Alfred Road', dimensions: '35cm x 55cm')
Art.create(title: 'The Persistance', artist: 'Salvador Dali', description: 'Surrealism taking over persistance', price: 10000, city: 'Madrid, Spain', dimensions: '40cm x 50cm')

puts 'Finished!'
