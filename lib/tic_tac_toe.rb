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
  
  def input_to_index
    puts "Please pick your next position."
    gets pick
    if pick.to_d == (/[1-9/)
      @board[pick.to_d - 1] = move
    else 
      "Please pick a position between 1-9."
    end
  end
  
  def move
    
  end
  
end