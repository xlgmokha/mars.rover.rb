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
end
