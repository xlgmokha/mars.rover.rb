class East
  def turn_right
    South.new
  end
  def turn_left
    North.new
  end
  def rotate(degrees)
    degrees > 0 ? turn_right : turn_left
  end
  def forward(location, plateau)
    plateau.increment(:x, location)
  end
  def represents?(direction)
    :east == direction
  end
  def to_s
    'E'
  end
end
