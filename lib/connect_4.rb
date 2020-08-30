require_relative 'constants'

class Connect4Game
  attr_accessor :board
  def initialize
    reset_board
  end

  def play
    display_welcome
    decide_player_names
    describe_game
    game_loop

  end

  def reset_board
    @board = Array.new(6){ Array.new(7, 0) }
  end

  def display_welcome
    puts "CONNECT FOUR\n"
    puts 'This is a game for two players. Grab a friend!'
  end

  def decide_player_names
    puts "What is player 1's name?"
    @player1 = gets.chomp
    puts "Hi #{@player1}, you get the red discs."
    puts "What is player 2's name?"
    @player2 = gets.chomp
    puts "Greetings #{@player2}, you use the yellow discs."
  end

  def describe_game
    puts "To make a move, type the number of the column you want to add to and press Enter."
    puts "Added discs fall to the lowest empty position in that column."
    puts "The first player to get four consecutive discs vertically, horizontally, or diagonally wins."
    puts "\n"
    puts "Player 1's discs: #{PLAYER_1_DISC}"
    puts "Player 2's discs: #{PLAYER_2_DISC}"
    puts "Empty position: #{EMPTY_SPACE}"
    puts "\n"
    puts "Good luck!"
  end

  def game_loop

  end

  def print_board
    puts '=========================='
    puts row_string(@board[0])
    puts '--------------------------'
    puts row_string(@board[1])
    puts '--------------------------'
    puts row_string(@board[2])
    puts '--------------------------'
    puts row_string(@board[3])
    puts '--------------------------'
    puts row_string(@board[4])
    puts '--------------------------'
    puts row_string(@board[5])
    puts '=========================='
  end

  def row_string(row)
    str = '|| '
    row.each do |elem|
      str += (NUMBER_TO_SYMBOL[elem] + ' ')
    end
    str += '||'
    str
  end
end

