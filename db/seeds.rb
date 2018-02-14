# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Player.destroy_all

puts 'Creating Bela & Lima...'
players_attributes = [
  {
    first_name:   'Fernando',
    last_name:    'Belastaguin',
    email:        'fernando@gmail.com',
    phone_number: '0612345678',
    password:     '1234'
  },
  {
    first_name:   'Pablo',
    last_name:    'Lima',
    email:        'pablo@gmail.com',
    phone_number: '0712345678',
    password:     '1234'
  },
]
Player.create!(players_attributes)
puts 'Finished!'
