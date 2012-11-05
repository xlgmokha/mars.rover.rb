require "rover"
require "north"
require "east"
require "west"
require "south"

class Plateau
  def initialize(x,y)
    @map = {:x => x.to_i, :y => y.to_i}
    @directions = {:N => North.new, :E => East.new, :W => West.new, :S => South.new}
  end

  def move_forward(location)
    location.forward(self)
  end

  def deploy_rover_to(heading, x, y)
    Rover.new(direction_for(heading),  x,  y, self)
  end

  def increment(axis, location)
    next_position = location.current(axis) + 1
    if(next_position > @map[axis])
      location.move_to(axis, 0)
    else
      location.move_to(axis, next_position)
    end
  end

  def decrement(axis, location)
    next_position = location.current(axis) - 1
    if (next_position < 0)
      location.move_to(axis, @map[axis])
    else
      location.move_to(axis, next_position)
    end
  end

  private

  def direction_for(heading)
    @directions[heading.upcase.to_sym]
  end
end
