require "plateau"
require "move_forward"
require "turn_left"
require "turn_right"

class NavigateRover
  def initialize(plateau_size, starting_position, instructions)
    @plateau_size = plateau_size
    @x = starting_position.split()[0].to_i
    @y = starting_position.split()[1].to_i
    @heading = starting_position.split()[2]
    @instructions = instructions
  end
  def run
    rover = create_plateau(@plateau_size).deploy_rover_to(@heading, @x, @x)
    commands_for(rover).each do |item| 
      @instructions.split(//).each do |instruction|
        item.run(instruction)
      end
    end
    rover
  end
  def create_plateau(plateau_size)
    coordinates = plateau_size.split(' ')
    Plateau.new(coordinates[0], coordinates[1])
  end
  def commands_for(rover)
    [MoveForward.new(rover), TurnLeft.new(rover), TurnRight.new(rover)]
  end
end
