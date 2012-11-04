require "plateau"
require "move_forward"
require "turn_left"
require "turn_right"

class NavigateRover
  def initialize(plateau_size, starting_position, instructions)
    @plateau_size = plateau_size
    @x, @y, @heading = starting_position.split()
    @instructions = instructions.split(//)
  end
  def run
    rover = create_plateau(@plateau_size).deploy_rover_to(@heading, @x.to_i, @y.to_i)
    @instructions.each do |instruction|
      commands_for(rover).each do |item|
        item.run(instruction)
      end
    end
    rover.to_s
  end
  def create_plateau(plateau_size)
    x,y = plateau_size.split(' ')
    Plateau.new(x,y)
  end
  def commands_for(rover)
    [MoveForward.new(rover), TurnLeft.new(rover), TurnRight.new(rover)]
  end
end
