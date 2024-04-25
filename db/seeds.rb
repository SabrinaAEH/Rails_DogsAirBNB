# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

# Création de 5 villes
5.times do
  City.create(city_name: Faker::Address.city)
end

# Création de 5 promeneurs:
5.times do
  Dogsitter.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
  )
end

# Création de 5 chiens :
5.times do
  Dog.create(
    dog_name: Faker::Creature::Dog.name,
  )
end

# Création de 5 promenades avec une date aléatoire:
5.times do
  Stroll.create(
    date: Faker::Time.forward(days: 30, period: :day),
  )
end

puts "seeds créé avec succès"
