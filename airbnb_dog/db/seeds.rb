# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do 
	city_seed = City.create!(name: Faker::Address.city)
end


50.times do 
	dogsitter_seed = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, age: Faker::Number.between(from: 15, to: 80), city_id: Faker::Number.between(from: 1, to: 30))
end


50.times do 
	dog_seed = Dog.create!(name: Faker::Name.middle_name, city_id: Faker::Number.between(from: 1, to: 30))
end


100.times do 
	stroll_seed = Stroll.create!(place: Faker::Address.community, dogsitter_id: Faker::Number.between(from: 1, to: 50))
end


300.times do 
	dog_for_stroll = DogForStroll.create!(stroll_id: Faker::Number.between(from: 1, to: 100), dog_id: Faker::Number.between(from: 1, to: 50))
end
