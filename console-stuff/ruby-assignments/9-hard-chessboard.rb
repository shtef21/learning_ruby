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

# Return array of [VALIDITY, DESCRIPTION] for a chesspiece
def chesspiece_valid?(name, count)
  if name.length == 2 and name.start_with?("b", "w")
    color = name.start_with?("b") ? "black" : "white"

    if name.end_with?("P")
      valid = count <= 8
      return [valid, valid ? nil : "Too many #{color} pawns"]
    elsif name.end_with?("R")
      valid = count <= 2
      return [valid, valid ? nil : "Too many #{color} rooks"]
    elsif name.end_with?("N")
      valid = count <= 2
      return [valid, valid ? nil : "Too many #{color} knights"]
    elsif name.end_with?("B")
      valid = count <= 2
      return [valid, valid ? nil : "Too many #{color} bishops"]
    elsif name.end_with?("Q")
      valid = count <= 1
      return [valid, valid ? nil : "Too many #{color} queens"]
    elsif name.end_with?("K")
      valid = count == 1
      return [
        count == 1,
        count > 1 ? "Too many #{color} kings"
          : count < 1 ? "Not enough #{color} kings"
          : ""
        ]
      # Else returns [false, "Invalid chesspiece name #{name}"]
    end
  end
  return [false, "Invalid chesspiece name '#{name}'"]
end

# Returns array of [VALIDITY (true/false), DESCRIPTION (string)]
def chessboard_valid?(board)
  # Check board format
  if not board.respond_to?(:length) || board.length != 8
    return [false, "Invalid board size"]
  elsif board.any? { |row| not row.respond_to?(:length) || row.length != 8 }
    return [false, "Invalid board size"]
  end

  cp_counter = Hash.new(0)
  board.each do |row|
    row.each do |piece|
      next if piece == nil

      cp_counter[piece] += 1
      piece_valid, err_msg = *chesspiece_valid?(piece, cp_counter[piece])
      if not piece_valid
        return [false, err_msg]
      end
    end
  end

  return [true, "Valid board state"]
end

# Board 1 – Valid Standard Start
chessboard_1 = [
  ["bR", "bN", "bB", "bQ", "bK", "bB", "bN", "bR"],
  ["bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP"],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  ["wP", "wP", "wP", "wP", "wP", "wP", "wP", "wP"],
  ["wR", "wN", "wB", "wQ", "wK", "wB", "wN", "wR"]
]
puts "Chessboard 1 result: #{chessboard_valid?(chessboard_1)}"

# Board 2 – Invalid (Too Many Kings)
chessboard_2 = [
  ["bK", "bK", nil, nil, nil, nil, nil, nil],
  ["bP", nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  ["wP", nil, nil, nil, nil, nil, nil, nil],
  ["wK", "wK", nil, nil, nil, nil, nil, nil]
]
puts "Chessboard 2 result: #{chessboard_valid?(chessboard_2)}"

# Board 3 – Invalid (Too Many Pawns)
chessboard_3 = [
  ["bR", "bN", "bB", "bQ", "bK", "bB", "bN", "bR"],
  ["bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP"],
  ["bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP"],  # Extra row of pawns
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  ["wP", "wP", "wP", "wP", "wP", "wP", "wP", "wP"],
  ["wR", "wN", "wB", "wQ", "wK", "wB", "wN", "wR"]
]
puts "Chessboard 3 result: #{chessboard_valid?(chessboard_3)}"

# Board 4 – Valid Custom Game State
chessboard_4 = [
  ["bR", nil, nil, nil, "bK", nil, nil, "bR"],
  [nil, "bP", nil, nil, nil, nil, "bP", nil],
  [nil, nil, "wN", nil, nil, nil, nil, nil],
  [nil, nil, nil, "wP", nil, nil, nil, nil],
  [nil, nil, nil, nil, "bP", nil, nil, nil],
  [nil, nil, nil, nil, nil, "wB", nil, nil],
  ["wP", "wP", "wP", nil, "wP", "wP", "wP", "wP"],
  ["wR", "wN", "wB", "wQ", "wK", nil, nil, "wR"]
]
puts "Chessboard 4 result: #{chessboard_valid?(chessboard_4)}"

# Board 5 – Valid Custom Game State
chessboard_5 = [
  ["bR", "bN", "bB", "bQ", nil, "bB", "bN", "bR"],
  ["bP", "bP", "bP", "bP", "bP", "bP", "bP", "bP"],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  [nil, nil, nil, nil, nil, nil, nil, nil],
  ["wP", "wP", "wP", "wP", "wP", "wP", "wP", "wP"],
  ["wR", "wN", "wB", "wQ", "wK", "wB", "wN", "wR"]
]
puts "Chessboard 5 result: #{chessboard_valid?(chessboard_5)}"

