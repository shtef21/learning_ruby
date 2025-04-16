=begin
3. Difficult Assignment: Tic-Tac-Toe Game (Two-Player)
Problem: Write a command-line Tic-Tac-Toe game for two players. The game should allow two players to take turns inputting their moves and display the board after each move. The game ends when either a player wins or the board is full (resulting in a draw).

Requirements:

The program should print the board after each move.

Players should take turns, with player 1 using 'X' and player 2 using 'O'.

The program should check for a win or draw after each move.

The game should ask if players want to play again after a win, draw, or when the game ends.

Example:

markdown
Copy
Edit
Player 1 (X) turn:
Enter position (1-9):
1
Board:
 X |   |  
-----------
   |   |  
-----------
   |   |  

Player 2 (O) turn:
Enter position (1-9):
5
Board:
 X |   |  
-----------
   | O |  
-----------
   |   |  
...
=end

class TicTacToe
  
   def initialize
      @grid = [
         " ", " ", " ",
         " ", " ", " ",
         " ", " ", " "
      ]
      @next_player = "X"
   end

   def intro_grid
      puts "Board grid:"
      puts " 1 | 2 | 3"
      puts "-----------"
      puts " 4 | 5 | 6"
      puts "-----------"
      puts " 7 | 8 | 9"
      puts
   end

   def draw
      puts " #{@grid[0..2].join(' | ')}"
      puts "-----------"
      puts " #{@grid[3..5].join(' | ')} "
      puts "-----------"
      puts " #{@grid[6..8].join(' | ')} "
      puts
   end

   def take_turn
      next_pl = @next_player == "X" ? 1 : 2
      print "Player #{next_pl} turn (1-9):"
      turn = gets.chomp.to_i

      while @grid[turn - 1] != " "
        print "  Cannot play a non-empty field #{turn}. Try again: "
        turn = gets.chomp.to_i
      end
      
      @grid[turn - 1] = @next_player
      @next_player = @next_player == "O" ? "X" : "O"
   end

   def can_continue
      @grid.find { |ch| ch == " " }
   end

   # Check if winner found:
   #   return "X" -> player 1 wins
   #   return "O" -> player 2 wins
   #   return " " -> no winner
   #   return nil -> game not over yet
   def check_win
      # TODO: implement check win
   end

   def start_game_loop
     while self.can_continue
         self.take_turn
         self.draw
     end
     puts "Game over!"
   end
end

puts "Tic-Tac-Toe game starting..."
game = TicTacToe.new
game.intro_grid
game.start_game_loop



