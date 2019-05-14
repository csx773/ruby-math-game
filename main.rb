# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './game'
require './player'
require './question'

## Your test code can go here
puts "=== START OF MAIN.RB ===="

player_one = Player.new("Sam")
player_two = Player.new("Ben")

mathGame = Game.new player_one, player_two
puts "Current players in game are " + mathGame.players.to_s

mathGame.start_game


puts "=== END OF MAIN.RB ==="