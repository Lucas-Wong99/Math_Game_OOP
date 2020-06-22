class Question

  def initialize 
    @random_num1 = rand(20)
    @random_num2 = rand(20)
  end

  def prompt 
    puts "What is the ANSWER to #{@random_num1} + #{@random_num2}?"
  end

  def answer
    return @random_num1 + @random_num2
  end

end