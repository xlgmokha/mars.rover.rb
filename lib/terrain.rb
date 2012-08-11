class Terrain
  def initialize(edge_of_map)
    @map = edge_of_map
  end

  def move_forward( heading, location)
    new_location = heading.forward(location.clone)
    if(is_on_terrain(new_location, :x) && is_on_terrain(new_location, :y))
      location[:x] = new_location[:x]
      location[:y] = new_location[:y]
    end
  end

  private 
  def is_on_terrain(new_location, symbol)
    new_location[symbol] < @map[symbol] && new_location[symbol] > 0
  end
end
