# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Player.destroy_all
Team.destroy_all
Division.destroy_all


puts 'Create 4 divisions'

divisions_attributes = [
{ name: 'Division 1' },
{ name: 'Division 2' },
{ name: 'Division 3' },
{ name: 'Division 4' }
]
Division.create!(divisions_attributes)
puts 'Divisions created!'

puts 'Create 1 fake team'

teams_attributes = { name: 'Bela / Lima', division_id: Division.last.id}
Team.create!(teams_attributes)

puts 'fake team created'

puts 'Creating Bela & Lima...'
players_attributes = [
  {
    first_name:   'Fernando',
    last_name:    'Belastaguin',
    email:        'fernando@gmail.com',
    phone_number: '0612345678',
    password:     '1234',
    team_id:       Team.last.id
  },
  {
    first_name:   'Pablo',
    last_name:    'Lima',
    email:        'pablo@gmail.com',
    phone_number: '0712345678',
    password:     '1234',
    team_id:       Team.last.id
  },
]
Player.create!(players_attributes)

# puts 'Create a Bela/Lima team'
# Team.create!(name: 'Bela/Lima')
puts 'Players created!'


puts 'All Finished!'
