require './player'
require './question'

class Game
    # attr_reader :question, :answer
    # attr_writer :name
    attr_accessor :players

    def initialize 
        # will contain all players for game (min 2)
        @players = []
        
    end

    def get_player newPlayer
    #grab player name and push into players[]
        @players.push(newPlayer.name)
    end

    def start_game
    # init game settings and loop
    end

    def turn 
        #logic for actions every turn
    end

    def remove_player player_name
        #removes the player with life = 0
        @players.delete_if { |name| name == player_name } 
    end

end
