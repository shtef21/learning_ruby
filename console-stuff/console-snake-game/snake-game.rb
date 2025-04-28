require_relative 'snake'

class SnakeGame

  def initialize(width, height)
    # Initialize map
    #@map = Array.new(height, Array.new(width, ' '))  ## ERROR - multiple refs. to same arr
    @map = Array.new(height) { Array.new(width, ' ') }
    @map_h = height
    @map_w = width
    @food_pos = nil

    # Fill borders
    wall = '█'
    (0...width).each do |w|
      @map[0][w] = wall
      @map[height-1][w] = wall
    end
    (0...height).each do |h|
      @map[h][0] = wall
      @map[h][width-1] = wall
    end

    # Create snake
    @snake = Snake.new(3, height, width)

    # Add food
    add_food_to_map
  end

  def show
    output_map = Array.new(@map.length) { Array.new(@map[0].length) }
    (0...@map.length).each do |h|
      (0...@map[0].length).each do |w|
        char = ''
        if @snake.is_head(h, w)
          char = '@'
        elsif @snake.is_body(h, w)
          char = '■'
        elsif @food_pos == [h, w]
          char = '*'
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
    next_pos = @snake.get_head_pos
    case direction.downcase
    when 'w'
      next_pos[0] -= 1
    when 'a'
      next_pos[1] -= 1
    when 's'
      next_pos[0] += 1
    when 'd'
      next_pos[1] += 1
    else
      return
    end

    food_eaten = next_pos == @food_pos
    moved = @snake.move(next_pos, food_eaten)
    puts "Move successful: #{moved}"
    if food_eaten || @food_pos.nil?
      add_food_to_map
    end
  end


  def add_food_to_map
    # Try to generate food at most 50 times
    n_attempts = 50
    @food_pos = nil

    while n_attempts > 0 && @food_pos.nil?
      pos_h, pos_w = rand(1...(@map_h-1)), rand(1...(@map_w-1))
      taken_by_snake = @snake.is_snake_pos(pos_h, pos_w)
      if not taken_by_snake
        @food_pos = [pos_h, pos_w]
      end
      n_attempts -= 1
    end
  end

end
