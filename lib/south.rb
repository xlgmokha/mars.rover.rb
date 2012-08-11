class South
  def turn_right
    West.new
  end
  def turn_left
    East.new
  end
  def forward(location)
    location[:y] = location[:y]-1
  end
  def to_s
    'S'
  end
end
