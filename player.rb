class Player
  attr_accessor :lives, :name

  def initialize(n)
    @name = n
    @lives = 3
  end

  def lose_life
    @lives = @lives - 1
  end

end

# player1 = Player.new
# player2 = Player.new

# p player1
# player1.lose_life
# p player1
# player1.lose_life
# p player1
# player1.lose_life
# p player1.lives