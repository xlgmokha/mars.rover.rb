class South
  include Rotation
  include Heading
  def rotate(degrees)
    degrees > 0 ? West.new : East.new
  end
  def forward(location, plateau)
    plateau.decrement(:y, location)
  end
end

