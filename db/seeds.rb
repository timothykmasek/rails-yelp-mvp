# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require faker

categories = ["chinese", "italian", "japanese", "french", "belgian"]
rand_category = categories.sample(1)[0]

5.times do
  p Restaurant.create(
    name: Faker::TvShows::FamilyGuy.character,
    address: Faker::Address.unique.street_address,
    phone_number: Faker::Number.number(digits: 10),
    category: rand_category
  )
end
