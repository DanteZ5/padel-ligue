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

def division(index)
  if index < 16
    division_id = Division.first.id
  elsif index < 32
    division_id = Division.second.id
  elsif index < 48
    division_id = Division.third.id
  else
    division_id = Division.last.id
  end
end



puts 'Divisions created!'

puts 'Creating 64 fake players...'


64.times do
  player_attributes =
  {
    first_name:   Faker::Name.first_name,
    last_name:    Faker::Name.last_name,
    email:        Faker::Internet.free_email,
    phone_number: Faker::PhoneNumber.cell_phone,
    password:     '1234',
  }
  Player.create!(player_attributes)
end

# puts 'Create a Bela/Lima team'
# Team.create!(name: 'Bela/Lima')
puts 'Players created!'

puts 'creating teams according to players'
players = Player.all
first = true
team = "" # note : instance de Team in fine - on stocke
name = ""
players.each_with_index do |player, index|
  if first
    name = "#{player.last_name} / #{players[index+1].last_name}"
    division_id = division(index)
    team = Team.create!(name: name, division_id: division_id)
    first = false
  else
    first = true
  end
  player.team_id = team.id
  player.save
end


puts 'teams created'


puts 'All Finished!'
