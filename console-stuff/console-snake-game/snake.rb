class Snake
  
  def initialize(length, map_h, map_w)
    @min_h, @max_h = 1, map_h - 2
    @min_w, @max_w = 1, map_w - 2
    h_0 = map_h / 2
    w_0 = map_w / 2
    
    @positions = []
    (0..(length-1)).each do |pos_idx|
      @positions << [h_0, w_0-pos_idx]
    end
  end

  def is_snake_head(h, w)
    @positions[0] == [h, w]
  end

  def is_snake_body(h, w)
    @positions[1..].find { |pos| pos == [h, w] }
  end

  # Move snake and return true if moved or false if not
  def move(direction)
    ((@positions.length-1).downto(1)).each do |i|
      puts "@positions[#{i}] = #{@positions[i-1].to_s}"
      @positions[i] = @positions[i-1].clone
    end

    next_dir = @positions[0].clone
    case direction.downcase
    when 'w'
      next_dir[0] -= 1
    when 'a'
      next_dir[1] -= 1
    when 's'
      next_dir[0] += 1
    when 'd'
      next_dir[1] += 1
    else
      return false
    end

    if is_snake_body(next_dir[0], next_dir[1])
      # Cannot move into itself
      return false
    elsif next_dir[0] > @max_h || next_dir[0] < @min_h ||
      next_dir[1] > @max_w || next_dir[1] < @min_w
      # Cannot move into walls
      return false
    end

    @positions[0] = next_dir
    return true
  end
end