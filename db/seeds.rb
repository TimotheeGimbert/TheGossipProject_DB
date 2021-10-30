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
Gossip.destroy_all
Tag.destroy_all
Category.destroy_all

# Create cities with zip_codes
10.times do
  city = City.create(
    name: Faker::Name.first_name + 'ville',
    zip_code: Faker::Number.within(range: 10000..77000).to_s
  )
  puts city
end

# Create users
10.times do
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence(word_count: 40),
    email: Faker::Internet.email,
    age: rand(18..120),
    city: City.all[rand(0..City.all.length)-1]
    )
    puts user
end


funny = Category.create
weird = Category.create

20.times do
  gossip = Gossip.create(
    title: Faker::Lorem.sentence(word_count: 6, supplemental: true, random_words_to_add: 3),
    content: Faker::Lorem.sentence(word_count: 88),
    user: User.all[rand(0..User.all.length-1)],
    category: [funny, weird][rand(0..1)]
  )
  puts gossip
end

10.times do
  tag = Tag.create(
    name: 'tag ' + Faker::Lorem.sentence(word_count: 1),
    category: [funny, weird][rand(0..1)]
  )
  puts tag
end





