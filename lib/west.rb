class West
  include Rotation
  def rotate(degrees)
    degrees > 0 ? North.new : South.new
  end
  def forward(location, plateau)
    plateau.decrement(:x, location)
  end
  def represents?(direction)
    :west == direction
  end
  def to_s
    'W'
  end
end
