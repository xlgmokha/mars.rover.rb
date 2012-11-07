class North
  include Rotation

  def rotate(degrees)
    degrees > 0 ? East.new : West.new
  end
  def forward(location, plateau)
    plateau.increment(:y, location)
  end
  def represents?(direction)
    :north == direction
  end
  def to_s
    'N'
  end
end
