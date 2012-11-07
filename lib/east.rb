class East
  include Rotation
  include Heading

  def rotate(degrees)
    degrees > 0 ? South.new : North.new
  end
  def forward(location, plateau)
    plateau.increment(:x, location)
  end
end
