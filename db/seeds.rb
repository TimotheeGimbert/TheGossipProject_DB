# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
City.destroy_all

10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence(word_count: 40, supplemental: true),
    email: Faker::Internet.email,
    age: rand(18..120)
    )
    puts user
end

10.times do
  city = City.create(
    name: Faker::Name.first_name + 'ville',
    zip_code: Faker::Number.within(range: 10000..77000).to_s
  )
  puts city
end

User.all.each do |user|
  user.update(city: City.all[rand(0..City.all.length)-1])
end