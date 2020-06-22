class Player 
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def lose_life
    self.lives = self.lives - 1
  end
end

class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
  end

  def wrong_answer
    self.player2.lose_life
  end
end

player = Player.new
game1 = Game.new
p game1

game1.wrong_answer

p game1
