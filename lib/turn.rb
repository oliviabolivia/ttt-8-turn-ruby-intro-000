board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

 def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

display_board(board)

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(array, index, player = 'X')
  array[index] = player
end

def valid_move?(board, index)

   if index.between?(0,8) == true && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    taken = false
  else
    take = true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if valid_move?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board, input)
  end
  display_board
end
