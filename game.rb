require './player'
require './question'

class Game
    attr_accessor :players

    def initialize player_one, player_two
        # will contain all players for game (min 2)
        @players = [player_one, player_two]
        @current_player_index = 0
        
    end

    def set_player newPlayer
        #grab player name and push into players[]
        @players.push(newPlayer)
    end

    def start_game
        # init game settings and loop
        until only_one_remains? do
            ask_question
            switch_player
        end
        # put winner is some Player
        puts "***** Winner Winner Chicken dinner for: #{@players[0].name} ****** "
    end

    def ask_question 
        #logic for actions every turn
        current_player = @players[@current_player_index]
        puts "<====== NEW TURN for player #{current_player.name} ======>"
        question = Question.new
        puts "#{current_player.name}: #{question.question} "
        input = gets.chomp
        if (question.check_answer? input)
            puts "#{current_player.name}: Answer is correct"
        else
            puts "#{current_player.name}: Answer is WRONG"
            current_player.remove_life
        end
        
        print_players_lifes
        
        puts "END OF TURN for player #{current_player.name}"
    end

    def remove_player select_player
        #removes the player with life = 0
        @players.delete_if do |player| 
            # binding.pry
            player == select_player
        end
    end

    def only_one_remains?
        life_one = players[0].life
        life_two = players[1].life
        if (life_one <= 0)
            remove_player(players[0])
            return true
        elsif (life_two <= 0)
            remove_player(players[1])
            return true
        else 
            return false
        end
    end

    def switch_player
        @current_player_index += 1
        if (@current_player_index == 2)
            @current_player_index = 0
        end
    end

    def print_players_lifes
        life_one = players[0].life
        life_two = players[1].life
        puts "#{players[0].name} have #{life_one}/3 VS. #{players[1].name} have #{life_two}/3."
    end

end
