class Terrain
  def initialize(edge_of_map)
    @map = edge_of_map
    @headings = [North.new, East.new, West.new, South.new]
  end

  def move_forward( heading, location)
    new_location = heading.forward(location.clone)
    if(is_on_terrain(new_location, :x) && is_on_terrain(new_location, :y))
      location[:x] = new_location[:x]
      location[:y] = new_location[:y]
    end
  end

  def deploy_rover_to(heading, coordinates)
    Rover.new(heading_for(heading), coordinates)
  end

  private 
  def is_on_terrain(new_location, symbol)
    new_location[symbol] < @map[symbol] && new_location[symbol] > 0
  end
  def heading_for(pneumonic)
    @headings.find { |heading| heading.to_s == pneumonic }
  end
end
