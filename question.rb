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

    def check_answer? user_answer
    # returns true / false for answer input
        if user_answer.to_i == @answer
            return true
        else 
            return false
        end
    end

end
