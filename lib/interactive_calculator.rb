class InteractiveCalculator
    def initialize(kernel)
        @kernel = kernel
    end

    def run
        @kernel.puts "Hello. I will subtract two numbers."
        @kernel.puts "Please enter a number"
        num_1 = @kernel.gets.chomp.to_i
        @kernel.puts "Please enter another number"
        num_2 = @kernel.gets.chomp.to_i
        @kernel.puts "Here is your result:"
        @kernel.puts "#{num_1} - #{num_2} = #{num_1 - num_2}"
    end
end


# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1