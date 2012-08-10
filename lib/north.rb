class North
  def turn_right
    East.new
  end
  def turn_left
    West.new
  end
  def forward(location)
    location[:y] = location[:y]+1
  end
end
