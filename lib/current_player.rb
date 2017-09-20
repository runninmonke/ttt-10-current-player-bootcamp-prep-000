def position_taken?(board, location)
  board[location] != " " && board[location] != ""
end

def turn_count(board)
  count = 0
  board.each do |location|
    if position_taken?(board, location)
      count += 1
    end
  end
  count
end

def current_player(board)
  if turn_count == 0 || turn_count%2 == 0
    "X"
  else
    "0"
  end
end
