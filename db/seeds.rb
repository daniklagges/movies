# db/seeds.rb
require 'faker'

# Crear algunas películas
10.times do
  Movie.create(
    title: Faker::Movie.title,
    genre: Faker::Book.genre,
    available: true
  )
end

# Crear algunos clientes
10.times do
  Customer.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end
