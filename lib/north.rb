class North
  def turn_right
    East.new
  end
  def turn_left
    West.new
  end
  def forward(location)
    location[:y] = location[:y].to_i + 1
  end
  def to_s
    'N'
  end
end
