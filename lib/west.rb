class West
  def turn_right
    North.new
  end
  def turn_left
    South.new
  end
  def forward(current_location)
    current_location[:x] = current_location[:x]-1
  end
end
