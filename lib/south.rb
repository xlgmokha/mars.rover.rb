class South
  def rotate(degrees)
    degrees > 0 ? West.new : East.new
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
