class East
  def rotate(degrees)
    degrees > 0 ? South.new : North.new
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
