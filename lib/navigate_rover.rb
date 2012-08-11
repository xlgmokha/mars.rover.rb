class NavigateRover
  def initialize(plateau_size, starting_position, instructions)
    @plateau_size = plateau_size
    @x = starting_position.split()[0].to_i
    @y = starting_position.split()[1].to_i
    @heading = starting_position.split()[2]
    @instructions = instructions
  end
  def run
    terrain = create_terrain(@plateau_size)
    rover = terrain.deploy_rover_to(@heading, @x, @x)
    @instructions.split(//).each do |instruction|
      case(instruction)
      when 'M'
        rover.forward
      when 'L'
        rover.turn_left
      when 'R'
        rover.turn_right
      end
    end
    rover
  end
  def create_terrain(plateau_size)
    coordinates = plateau_size.split(' ')
    Plateau.new(coordinates[0], coordinates[1])
  end
end
