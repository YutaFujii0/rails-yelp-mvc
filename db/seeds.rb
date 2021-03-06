require 'faker'

puts 'Cleaning database'
Restaurant.destroy_all

puts 'Creating database'
5.times do
  attributes = {
    name: Faker::Beer.name,
    address: Faker::WorldCup.stadium,
    phone_number: Faker::PhoneNumber.phone_number,
    category: Restaurant::CATEGORY.sample
  }
  Restaurant.create!(attributes)
end

puts 'Finished!'
