# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './game'
require './player'
require './question'

## Your test code can go here
puts "=== START OF MAIN.RB ===="

question1 = Question.new
puts question1.question
puts question1.answer

input = gets.chomp
puts question1.guess_answer?(input)

Ted = Player.new('Ted')
puts Ted.name
puts Ted.life
Ted.remove_life
Ted.remove_life

puts "current life of player is " + Ted.life.to_s


puts "=== END OF MAIN.RB ==="