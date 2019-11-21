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
  password: 'password',
  remote_photo_url: 'https://avatars0.githubusercontent.com/u/46313021?v=4'
},
{
  username: 'Vincent01',
  email: 'vincent@hotmail.com',
  password: 'password',
  remote_photo_url: 'https://avatars3.githubusercontent.com/u/56074503?v=4'
},
{
  username: 'Omar',
  email: 'omark@gmail.com',
  password: 'password2',
  remote_photo_url: 'https://avatars2.githubusercontent.com/u/52895382?v=4'
}
]
users.each do |user|
  User.create(user)
end
puts 'users created!'


puts 'creating Tigers'

species = ['Sumatran Tiger', 'Amur Tiger', 'Bengal Tiger', 'South China Tiger', 'Malayan Tiger', 'Indo-Chinese Tiger']

photos = [
          'https://images.unsplash.com/photo-1561731216-c3a4d99437d5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1477764250597-dffe9f601ae8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1526034332220-067b0f400e06?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1551972251-12070d63502a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1560379099-82952cae0f05?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1545462616-efed1939219f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1503066211613-c17ebc9daef0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1518799551598-7589ab033840?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1524132989408-c8ee48d8f147?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1550973595-c9f4d21f38cc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1506108928571-9f4b11ba3f10?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1553054366-ebbf4296eb32?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1537787009205-dac68f7e2759?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1521750912984-7ffae1614d61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1454023492550-5696f8ff10e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1562552476-8ac59b2a2e46?ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1570250363652-0d8340128223?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1562555199-732a21a30a36?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1549550499-0945fa0c610c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
          'https://images.unsplash.com/photo-1511617768747-077bc4b9d018?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
         ]


photos.each do |photo|
  age = rand(1..12)
  tiger = Tiger.new(name: Faker::Name.first_name, age: age, species: species.sample, price: 2000 - (100 * age), location: Faker::Address.full_address, user: User.all.sample)
  tiger.save
  tiger.remote_photo_url = photo
  tiger.save
end

puts 'tigers created!'

puts 'finished seeding'
