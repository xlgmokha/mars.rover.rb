class West
  include Rotation
  include Heading

  def rotate(degrees)
    degrees > 0 ? North.new : South.new
  end
  def forward(location, plateau)
    plateau.decrement(:x, location)
  end
end
