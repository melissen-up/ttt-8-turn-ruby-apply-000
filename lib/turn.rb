def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  valid_move?(board, index)
  if valid_move? == TRUE
    input_to_index
    puts display_board
  else
    puts "Please enter 1-9:"
    user_input = gets.chomp
    valid_move?(board, index)
    until valid_move? == TRUE
  end
end




# code for the display board 
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  index = "#{user_input}".to_i - 1
end

# code move method here
def move(board, index, value = "X")
  board[index] = value
  return board
end

# check for valid_move? also using position_taken? 
def valid_move?(board, index)
  if index.between?(0, 8) && position_taken?(board, index) == FALSE
    return TRUE
  else 
    return FALSE
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return FALSE
  else
    return TRUE
  end
end