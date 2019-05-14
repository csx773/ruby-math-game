class Player
    # attr_reader :name, :life
    # attr_writer :name
    attr_accessor :name, :life

    def initialize newName
        @name = newName
        @life = 3
    end

    def remove_life
        @life -= 1 
    end

end
