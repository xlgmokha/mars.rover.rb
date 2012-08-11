class East
  def turn_right
    South.new
  end
  def turn_left
    North.new
  end
  def forward(location)
    location[:x] = location[:x]+1
  end
  def to_s
    'E'
  end
end
