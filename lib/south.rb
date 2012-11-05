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
  def forward(location, plateau)
    plateau.decrement(:y, location)
  end
  def represents?(direction)
    :south == direction
  end
  def to_s
    'S'
  end
end
