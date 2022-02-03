class Player
  attr_reader :lives, :name

  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def dead?
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.question(name)
    print '> '
    @user_answer = gets.chomp
    if new_question.answer?(@user_answer.to_i)
      puts "Great!!! You're correct."
    else
      puts 'Opps!!! Wrong answer.'
      lose_life
    end
  end
end
