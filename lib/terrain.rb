class Terrain
  def initialize(edge_of_map)
    @map = edge_of_map
  end

  def move_forward( heading, location)
    new_location = heading.forward(location.clone)
    if( new_location[:x] < @map[:x] && new_location[:x] > 0 && new_location[:y] < @map[:y] && new_location[:y] > 0)
      location[:x] = new_location[:x]
      location[:y] = new_location[:y]
    end
  end
end
