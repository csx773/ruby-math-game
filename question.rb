class Question 
    attr_reader :question, :answer
    # attr_writer :name
    # attr_accessor :name

    def initialize 
        @num1 = rand(20) + 1
        @num2 = rand(20) + 1
        @question = "What does #{@num1} plus #{@num2} equals?"
        @answer = @num1 + @num2
    end

    def guess_answer? guess
    # returns true / false for answer input
        if guess.to_i == @answer
            return true
        else 
            return false
        end
    end

end
