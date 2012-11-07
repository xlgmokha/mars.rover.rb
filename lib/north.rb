class North
  include Rotation
  include Heading

  def rotate(degrees)
    degrees > 0 ? East.new : West.new
  end
  def forward(location, plateau)
    plateau.increment(:y, location)
  end
end
