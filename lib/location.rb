class Location
  def initialize(x, y, heading)
    @location = {:x => x, :y => y}
    @heading = heading
  end

  def forward(plateau)
    @heading.forward(self, plateau)
  end

  def rotate(degrees)
    @heading = @heading.rotate(degrees)
  end

  def is_facing(direction)
    @heading.represents? direction
  end

  def current(axis)
    return @location[axis]
  end

  def move_to(axis, coordinate)
    @location[axis] = coordinate
  end

  def increment(axis, map)
    next_position = current(axis) + 1
    if(next_position > map[axis])
      move_to(axis, 0)
    else
      move_to(axis, next_position)
    end
  end

  def decrement(axis, map)
    next_position = current(axis) - 1
    if (next_position < 0)
      move_to(axis, map[axis])
    else
      move_to(axis, next_position)
    end
  end

  def to_s
    "#{@location[:x]} #{@location[:y]} #{@heading}"
  end
end
