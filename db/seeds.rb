# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clearing booking database'
Booking.destroy_all
puts 'Bookings cleared'

puts 'clearing tiger database'
Tiger.destroy_all
puts 'Tigers cleared'


puts 'clearing user database'
User.destroy_all
puts 'Users cleared'



puts 'creating users'
users = [
{
  username: 'Ameya95',
  email: 'ameya@gmail.com',
  password: 'password'
},
{
  username: 'Vincent01',
  email: 'vincent@hotmail.com',
  password: 'password'
},
{
  username: 'Omar',
  email: 'omark@gmail.com',
  password: 'password2'
}
]
users.each do |user|
  User.create(user)
end
puts 'users created!'


puts 'creating Tigers'

species = ['Sumatran Tiger', 'Amur Tiger', 'Bengal Tiger', 'South China Tiger', 'Malayan Tiger', 'Indo-Chinese Tiger']

20.times do |num|
  age = rand(1..12)
  Tiger.create(name: Faker::Name.first_name, age: age, species: species.sample, price: 2000 - (100 * age), location: Faker::Address.full_address, user: User.all.sample)
end

puts 'tigers created!'

puts 'finished seeding'
