require 'faker'

puts 'Cleaning database'
Restaurant.destroy_all

puts 'Creating database'
5.times do
  attributes = {
    name: Faker::Beer.name,
    address: Faker::WorldCup.stadium,
    phone_munber: Faker::PhoneNumber.phone_number.delete('.'),
    category: Restaurant::CATEGORY.sample
  }
  Restaurant.create!(attributes)
end

puts 'Finished!'
