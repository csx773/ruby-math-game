require './player'
require './question'

class Game
    # attr_reader :question, :answer
    # attr_writer :name
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
            # @players.each do |player|
                # switch between each player's turn?
                ask_question
                switch_player
            # end
        end
        # put winner is some Player
        puts "Winner is: #{@players[0].name} "
    end

    def ask_question 
        #logic for actions every turn
        current_player = @players[@current_player_index]
        puts "NEW TURN for player #{current_player.name}"
        question = Question.new
        puts " #{current_player.name}: #{question.question} "
        input = gets.chomp
        if (question.check_answer? input)
            puts " #{current_player.name}: Answer is correct"
        else
            puts "#{current_player.name}: Answer is WRONG"
            current_player.remove_life
        end

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
            return true
        elsif (life_two <= 0)
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

end
