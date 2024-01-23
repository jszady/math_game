class Question
  def initialize
    @number1 = rand(1..1000)
    @number2 = rand(68..1000)
    @answer = @number1 + @number2
  end
  
  def answer(player)
    puts "#{player}: What does #{@number1} plus #{@number2} equal?"
    print "> "
    gets.chomp.to_i == @answer
  end
end