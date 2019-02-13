# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

10.times do
  Flat.create!(
    name: Faker::FunnyName.three_word_name,
    address: Faker::Address.street_address,
    description: Faker::Lorem.paragraph(3),
    price_per_night: Faker::Number.number(2),
    number_of_guests: Faker::Number.number(1)
  )
end
