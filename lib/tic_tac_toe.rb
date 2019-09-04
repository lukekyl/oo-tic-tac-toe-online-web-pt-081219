class TicTacToe
  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
    ]
  def initialize
    @board = [" "," "," "," "," "," "," "," "," "]
  end
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(input)
    choice = input.to_i - 1
    choice
  end
  def move(choice, token = "X")
    @board[choice] = token
  end
  def position_taken?(choice)
    taken = true
    if @board[choice] == " "
      taken = false
    end
    taken
  end
  def valid_move?(choice)
    valid_move = false
    if choice.between?(0,8) && position_taken?(choice) == false
      valid_move = true
    end
    valid_move
  end
  
  def turn 
    puts "Please choose your move on the board between 1 and 9."
    input = gets.chomp
    choice = input_to_index(input)
    if valid_move?(choice) == true 
      move(choice, token)
    else
      "Move not valid. Please make a new choice."
    end
  end
  def turn_count
    
  end
  
end