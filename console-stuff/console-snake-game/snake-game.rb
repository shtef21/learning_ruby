require_relative 'snake'

class SnakeGame

  def initialize(width, height)
    # Initialize map
    #@map = Array.new(height, Array.new(width, ' '))  ## ERROR - multiple refs. to same arr
    @map = Array.new(height) { Array.new(width, ' ') }

    # Fill borders
    wall = '█'
    (0..(width-1)).each do |w|
      @map[0][w] = wall
      @map[height-1][w] = wall
    end
    (0..(height-1)).each do |h|
      @map[h][0] = wall
      @map[h][width-1] = wall
    end

    # Create snake
    @snake = Snake.new(3, height, width)
  end

  def show
    output_map = Array.new(@map.length) { Array.new(@map[0].length) }
    (0..(@map.length-1)).each do |h|
      (0..(@map[0].length-1)).each do |w|
        char = ''
        if @snake.is_snake_head(h, w)
          char = '@'
        elsif @snake.is_snake_body(h, w)
          char = 'X'
        else
          char = @map[h][w]
        end
        output_map[h][w] = char
      end
    end

    output_map.each do |row|
      puts row.join("")
    end
  end

  def move_snake(direction)
    @snake.move(direction)
  end
end
