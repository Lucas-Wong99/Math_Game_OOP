require "./player"
require "./question"

class Game 

  def initialize 
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @player_arr = [@player_1, @player_2]
  end

  def wrong_answer(player)
    player.lose_life
  end

  def get_curr_player
    current_player = @player_arr.first()
    p "The current player is #{current_player.name}"
    return current_player
  end

  def shift_curr_player
    @player_arr << @player_arr.shift
  end

  def player_lives
    puts "Player 1 has (#{@player_1.lives}/3) lives and Player 2 has (#{@player_2.lives}/3) lives"
  end

  def game_status
    if @player_1.lives > 0 && @player_2.lives > 0
      puts "---NEW TURN---"
      return true
    else
      puts "---GAME OVER!---"
      puts @player_1.lives == 0 ? "#{@player_2.name} is the winner" : "#{@player_1.name} is the winner"
      return false
    end
  end

  def game_play
    while game_status do
      player = get_curr_player
      q = Question.new
      print q.prompt
      user_answer = gets.chomp
      if user_answer.to_i == q.answer
        puts "Good job! That's correct"
        shift_curr_player
      else 
        wrong_answer(player)
        puts "Nope! That's incorrect"
        shift_curr_player
      end
      player_lives
    end
  end
  
end

