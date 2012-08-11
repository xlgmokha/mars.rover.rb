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
      commands_for(rover).find { |item| item.matches(instruction) }.run
    end
    rover
  end
  def create_terrain(plateau_size)
    coordinates = plateau_size.split(' ')
    Plateau.new(coordinates[0], coordinates[1])
  end
  def commands_for(rover)
    [MoveForward.new(rover), TurnLeft.new(rover), TurnRight.new(rover)]
  end
end

class MoveForward
  def initialize(rover)
    @rover = rover
  end
  def run
    @rover.forward
  end
  def matches(item)
    'M' == item
  end
end
class TurnLeft
  def initialize(rover)
    @rover = rover
  end
  def run
    @rover.turn_left
  end
  def matches(item)
    'L' == item
  end
end
class TurnRight
  def initialize(rover)
    @rover = rover
  end
  def run
    @rover.turn_right
  end
  def matches(item)
    'R' == item
  end
end
