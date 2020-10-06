=begin 
ask for input
get input
convert input to index
if index is valid
  make the move for index
  show the board
else
  ask for input again until you get a valid input
=end

def display_board()
end

def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == FALSE
    return TRUE
  else 
    return FALSE
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return FALSE
  else
    return TRUE
  end
end 