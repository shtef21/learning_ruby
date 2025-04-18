=begin
9. ♟️ Chessboard Validator (Hard)
Problem:
Validate if a given chessboard is legal (array of 8x8 with piece names like "wK", "bQ", "wP"...)

Input:
A 2D array like:
[["bR", "bN", "bB", "bQ", "bK", "bB", "bN", "bR"],
 ["bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP"],
 [nil, nil, nil, nil, nil, nil, nil, nil],
 ...
 ["wP", "wP", "wP", "wP", "wP", "wP", "wP", "wP"],
 ["wR", "wN", "wB", "wQ", "wK", "wB", "wN", "wR"]]
Output:
"Valid" or "Invalid: too many kings"


BONUS - here are 5 possible inputs:
  Board 1 – Valid Standard Start
  [
    ["bR", "bN", "bB", "bQ", "bK", "bB", "bN", "bR"],
    ["bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP"],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    ["wP", "wP", "wP", "wP", "wP", "wP", "wP", "wP"],
    ["wR", "wN", "wB", "wQ", "wK", "wB", "wN", "wR"]
  ]

  Board 2 – Invalid (Too Many Kings)
  [
    ["bK", "bK", nil, nil, nil, nil, nil, nil],
    ["bP", nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    ["wP", nil, nil, nil, nil, nil, nil, nil],
    ["wK", "wK", nil, nil, nil, nil, nil, nil]
  ]

  Board 3 – Invalid (Too Many Pawns)
  [
    ["bR", "bN", "bB", "bQ", "bK", "bB", "bN", "bR"],
    ["bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP"],
    ["bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP"],  # Extra row of pawns
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    ["wP", "wP", "wP", "wP", "wP", "wP", "wP", "wP"],
    ["wR", "wN", "wB", "wQ", "wK", "wB", "wN", "wR"]
  ]

  Board 4 – Valid Custom Game State
  [
    ["bR", nil, nil, nil, "bK", nil, nil, "bR"],
    [nil, "bP", nil, nil, nil, nil, "bP", nil],
    [nil, nil, "wN", nil, nil, nil, nil, nil],
    [nil, nil, nil, "wP", nil, nil, nil, nil],
    [nil, nil, nil, nil, "bP", nil, nil, nil],
    [nil, nil, nil, nil, nil, "wB", nil, nil],
    ["wP", "wP", "wP", nil, "wP", "wP", "wP", "wP"],
    ["wR", "wN", "wB", "wQ", "wK", nil, nil, "wR"]
  ]

  Board 5 – Valid Custom Game State
  [
    ["bR", "bN", "bB", "bQ", nil, "bB", "bN", "bR"],
    ["bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP"],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    [nil, nil, nil, nil, nil, nil, nil, nil],
    ["wP", "wP", "wP", "wP", "wP", "wP", "wP", "wP"],
    ["wR", "wN", "wB", "wQ", "wK", "wB", "wN", "wR"]
  ]
=end

=begin
Help:
  b - black
  w - white
  P - Pawn (max 8)
  R - Rook (max 2)
  N - Knight (max 2)
  B - Bishop (max 2)
  Q - Queen (max 1)
  K - King (must equal 1 for each color)
=end

def chesspiece_valid?(name, count)
  if name.length == 2 and name.start_with?("b", "w")
    if name.end_with?("P")
      return count <= 8
    elsif name.end_with?("R", "N", "B")
      return count <= 2
    elsif name.end_with?("Q")
      return count <= 1
    elsif name.end_with?("K")
      return count == 1
    end
  end
  return false
end

# Returns array of [VALIDITY (true/false), DESCRIPTION (string)]
def chesboard_valid?(board)
  # Check board format
  if board.respond_to?(:length) || board.length != 8
    return [false, "Invalid board size"]
  elsif board.any? { |row| not row.respond_to?(:length) || row.length != 8 }
    return [false, "Invalid board size"]
  end

  # TODO: finish
  board.each do |row|
    [].each do |piece|
      next if piece == nil
    end
  end

  return [true, "Valid board state"]
end
