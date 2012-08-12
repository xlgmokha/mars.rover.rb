class East
  def turn_right
    South.new
  end
  def turn_left
    North.new
  end
  def turn(degrees)
    degrees > 0 ? turn_right : turn_left
  end
  def forward(location)
    location[:x] = location[:x].to_i + 1
  end
  def to_s
    'E'
  end
end
