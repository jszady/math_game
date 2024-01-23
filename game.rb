class Game 
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end
  
  def start
    while @player1.is_alive? && @player2.is_alive?
      question = Question.new
      unless question.answer(@current_player.name)
        @current_player.lose_life
        puts "#{@current_player.name}: Seriously? No!"
      else
        puts "#{@current_player.name}: YES! You are correct."
      end
      show_score
      change_turn
      puts "— NEW TURN —"
    end
    end_game
  end

  def change_turn
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def show_score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def end_game
    winner = @player1.is_alive? ? @player1 : @player2
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
    puts "— GAME OVER —\nGoodbye!"
  end

end 