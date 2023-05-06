# DESCRIPTION:
# Task
# Your task is to make a simple class called SnakesLadders. The test cases will call the method play(die1, die2) independantly of the state of the game or the player turn. The variables die1 and die2 are the die thrown in a turn and are both integers between 1 and 6. The player will move the sum of die1 and die2.
# Rules
# 1.  There are two players and both start off the board on square 0.

# 2.  Player 1 starts and alternates with player 2.

# 3.  You follow the numbers up the board in order 1=>100

# 4.  If the value of both die are the same then that player will have another go.

# 5.  Climb up ladders. The ladders on the game board allow you to move upwards and get ahead faster. If you land exactly on a square that shows an image of the bottom of a ladder, then you may move the player all the way up to the square at the top of the ladder. (even if you roll a double).

# 6.  Slide down snakes. Snakes move you back on the board because you have to slide down them. If you land exactly at the top of a snake, slide move the player all the way to the square at the bottom of the snake or chute. (even if you roll a double).

# 7.  Land exactly on the last square to win. The first person to reach the highest square on the board wins. But there's a twist! If you roll too high, your player "bounces" off the last square and moves back. You can only win by rolling the exact number needed to land on the last square. For example, if you are on square 98 and roll a five, move your game piece to 100 (two moves), then "bounce" back to 99, 98, 97 (three, four then five moves.)

# 8.  If the Player rolled a double and lands on the finish square “100” without any remaining moves then the Player wins the game and does not have to roll again.
# Returns
# Return Player n Wins!. Where n is winning player that has landed on square 100 without any remainding moves left.

# Return Game over! if a player has won and another player tries to play.

# Otherwise return Player n is on square x. Where n is the current player and x is the sqaure they are currently on.

class SnakesLadders
  def initialize
    @current_user = "Player 1"
    @square1 = 0
    @square2 = 0
    @next_user = next_user ||= nil
  end

  LADDER = {
    2 => 38,
    7 => 14,
    8 => 31,
    15 => 26,
    21 => 42,
    28 => 84,
    36 => 44,
    51 => 67,
    71 => 91,
    78 => 98,
    87 => 94
  }

  SNAKE = {
    16 => 6,
    46 => 25,
    49 => 11,
    62 => 19,
    64 => 60,
    74 => 53,
    89 => 68,
    92 => 88,
    95 => 75,
    99 => 80
  }

  def play(die1, die2)
    set_current_user

    if die1 == die2
      @next_user = @current_user
    else
      @next_user = (@current_user == "Player 1" ? "Player 2" : "Player 1")
    end

    return "Game over!" if @square1 == 100 || @square2 == 100

    if @current_user == "Player 1"
      score = @square1 + die1 + die2

      if LADDER.key?(score)
        @square1 = LADDER[score]
      elsif SNAKE.key?(score)
        @square1 = SNAKE[score]
      else
        @square1 += (die1 + die2)
      end

      case
      when @square1 == 100
        "#{@current_user} Wins!"
      when @square1 > 100
        over = 100 - (@square1 - 100)
        @square1 = over
        @square1 = SNAKE[over] if SNAKE.key?(over)
        "#{@current_user} is on square #{@square1}"
      when @square1 < 100
        "#{@current_user} is on square #{@square1}"
      end

    else @current_user == "Player 2"
      score = @square2 + die1 + die2

      if LADDER.key?(score)
        @square2 = LADDER[score]
      elsif SNAKE.key?(score)
        @square2 = SNAKE[score]
      else
        @square2 += (die1 + die2)
      end

      case
      when @square2 == 100
         "#{@current_user} Wins!"
      when @square2 > 100
        over = 100 - (@square2 - 100)
        @square2 = over
        @square2 = SNAKE[over] if SNAKE.key?(over)
        "#{@current_user} is on square #{@square2}"
      when @square2 < 100
        "#{@current_user} is on square #{@square2}"
      end
    end
  end

  def set_current_user
   return @current_user if @next_user.nil?
   @current_user = @next_user
  end
end
