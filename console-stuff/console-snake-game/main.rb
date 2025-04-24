
require 'io/console'
require_relative 'snake-game'

w, h = 30, 10
game = SnakeGame.new(w, h)

puts "Initialized map of dimensions #{w}x#{h}"

loop do
  puts " > 'wasd' to move and q or CTRL+C to quit"
  game.show
  char = STDIN.getch
  until ['w','a','s','d','q','\u0003'].include?(char)
    char = STDIN.getch
  end
  break if char == 'q' or char == "\u0003"
  game.move_snake(char)
end


