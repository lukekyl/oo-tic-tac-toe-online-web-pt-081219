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
   def turn_count
    turns = 0
	  @board.each do |turn|
  		if turn == "X"
  			turns += 1
  		elsif turn == "O"
  			turns += 1
  		end
	  end
	  turns
  end
  def current_player
	return turn_count.even? == true ? "X" : "O"
end
  
  def turn 
    puts "Please choose your move on the board between 1 and 9."
    input = gets.chomp
    choice = input_to_index(input)
    if valid_move?(choice) == true && current_player == "X"
      move(choice, token = "X")
      puts display_board
    elsif valid_move?(choice) == true && current_player == "O"
      move(choice, token = "O")
      puts display_board
    else
      puts display_board
      "Move not valid. Please make a new choice between 1 and 9."
      gets.chomp
    end
  end
 
  def won?
    WIN_COMBINATIONS.detect{ |combo|
    position_taken?(combo[0]) && @board[combo[0]] == @board[combo[1]] && @board[combo[1]] == @board[combo[2]]
    }
  end
  
  def full?
    @board.any?(" ") ? false : true
  end
end