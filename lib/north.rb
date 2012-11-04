class North
  def turn_right
    East.new
  end
  def turn_left
    West.new
  end
  def rotate(degrees)
    degrees > 0 ? turn_right : turn_left
  end
  def forward(location)
    location[:y] = location[:y].to_i + 1
    location
  end
  def represents?(direction)
    :north == direction
  end
  def to_s
    'N'
  end
end
