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

  def get_head_pos
    @positions[0].clone
  end

  def is_head(h, w)
    @positions[0] == [h, w]
  end

  def is_body(h, w)
    @positions[1..].find { |pos| pos == [h, w] }
  end

  # Is head or body
  def is_snake_pos(h, w)
    @positions.find { |pos| pos == [h, w] }
  end

  def move(next_pos, next_is_food)

    if @positions[1..-2].find { |pos| pos == next_pos }
      # Cannot move into itself
      return false
    elsif next_pos[0] > @max_h || next_pos[0] < @min_h ||
      next_pos[1] > @max_w || next_pos[1] < @min_w
      # Cannot move into walls
      return false
    elsif @positions[..-2].find { |body_pos| body_pos == next_pos }
      # Cannot move into body
      return false
    end

    # Extend tail if ate food
    if next_is_food
      @positions << @positions.last.clone
    end

    # Move body
    (1...@positions.length).reverse_each do |i|
      @positions[i] = @positions[i-1].clone
    end
    
    # Finally move head
    @positions[0] = next_pos
    return true
  end
end