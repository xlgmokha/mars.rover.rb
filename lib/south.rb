class South
  def turn_right
    West.new
  end
  def turn_left
    East.new
  end
  def rotate(degrees)
    degrees > 0 ? turn_right : turn_left
  end
  def forward(location)
    location[:y] = location[:y] - 1
    location
  end
  def to_s
    'S'
  end
end
