# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'securerandom'

Lineup.delete_all
Team.delete_all
Player.delete_all

 

team1 = 'Team 1'
team2 = 'Team 2'
team3 = 'Team 3'
team4 = 'Team 4'
team5 = 'Team 5'

teams_name = [team1, team2, team3, team4, team5]
 
team_collection = []
positions_array = ["gk","lb","lcb","rcb","rb","cdm","lcm","rcm","lw","st","rw"] 
player_position = 

teams_name.each do |name|
  team_collection << Team.create(name: name)
end
 
team_collection.each do |team|
  team_size = 11
 
  (1..team_size).each do |player|
    name = Faker::Name.name
    position = positions_array.sample
    club = Faker::Sports::Football.team
    rating = rand(60..95)
    Player.create(name: name, position: position, rating: rating, club:club)
  end
end

# team1.players.push(Player.first, Player.second)


# # Outfit.create(name:'going out', user:User.first).items.push(Item.fifth, Item.third)
Team.first.players.push(Player.first,Player.second, Player.third, Player.fourth, Player.fifth, Player.find_by(id: (Player.last.id-1)),Player.find_by(id: (Player.last.id-2)),Player.find_by(id: (Player.last.id-3)),Player.find_by(id: (Player.last.id-4)),Player.find_by(id: (Player.last.id-5)),Player.find_by(id: (Player.last.id-6)))
Team.second.players.push(Player.first,Player.second, Player.third, Player.fourth, Player.fifth, Player.find_by(id: (Player.last.id-1)),Player.find_by(id: (Player.last.id-2)),Player.find_by(id: (Player.last.id-3)),Player.find_by(id: (Player.last.id-4)),Player.find_by(id: (Player.last.id-5)),Player.find_by(id: (Player.last.id-6)))
Team.third.players.push(Player.first,Player.second, Player.third, Player.fourth, Player.fifth, Player.find_by(id: (Player.last.id-1)),Player.find_by(id: (Player.last.id-2)),Player.find_by(id: (Player.last.id-3)),Player.find_by(id: (Player.last.id-4)),Player.find_by(id: (Player.last.id-5)),Player.find_by(id: (Player.last.id-6)))
Team.fourth.players.push(Player.first,Player.second, Player.third, Player.fourth, Player.fifth, Player.find_by(id: (Player.last.id-1)),Player.find_by(id: (Player.last.id-2)),Player.find_by(id: (Player.last.id-3)),Player.find_by(id: (Player.last.id-4)),Player.find_by(id: (Player.last.id-5)),Player.find_by(id: (Player.last.id-6)))
Team.fifth.players.push(Player.first,Player.second, Player.third, Player.fourth, Player.fifth, Player.find_by(id: (Player.last.id-1)),Player.find_by(id: (Player.last.id-2)),Player.find_by(id: (Player.last.id-3)),Player.find_by(id: (Player.last.id-4)),Player.find_by(id: (Player.last.id-5)),Player.find_by(id: (Player.last.id-6)))

