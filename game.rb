class Game
  def initialize(name)
    @name = name
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
  end

  def start
    puts "New Game started....."
    puts "Welcome #{@player1.name} and #{@player2.name}"
    turn
  end

  def show_lives
    puts "Remaining Lives => P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end

  def check_lives
    if @player1.dead?
      winner(@player2)
    elsif @player2.dead?
      winner(@player1)
    end
  end

  def winner(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "------------------Game-Over---------------------"
    puts "Good Bye!!!"
    exit(0)
  end

  def turn
    @player1.new_question
    check_lives
    @player2.new_question
    check_lives
    show_lives
    puts "-------------------New-Turn----------------------"
    turn
  end

end
