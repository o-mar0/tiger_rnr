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
  username: 'Ameya69',
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
tigers = [
{
  name: 'Big Cat',
  age: 8,
  species: 'Bengal Tiger',
  price: 400,
  location: 'Melbourne',
  user: User.find_by(username: 'Ameya69')
},
{
  name: 'Tigaroo',
  age: 2,
  species: 'Sumatran Tiger',
  price: 1000,
  location: 'Cairo',
  user: User.find_by(username: 'Ameya69')
},
{
  name: 'Tigger',
  age: 4,
  species: 'Indochinese',
  price: 700,
  location: 'Indonesia',
  user: User.find_by(username: 'Vincent01')
}
]
tigers.each do |tiger|
  Tiger.create(tiger)
end
puts 'tigers created!'

puts 'finished seeding'
