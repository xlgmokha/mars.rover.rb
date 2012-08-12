class West
  def turn_right
    North.new
  end
  def turn_left
    South.new
  end
  def rotate(degrees)
    degrees > 0 ? turn_right : turn_left
  end
  def forward(location)
    location[:x] = location[:x] - 1
    location
  end
  def to_s
    'W'
  end
end
