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
    next_location = location.location[axis] + 1
    if(next_location > @map[axis])
      location.location[axis] = 0
    else
      location.location[axis] = next_location
    end
  end

  def decrement(axis, location)
    next_location = location.location[axis] - 1
    if (next_location < 0)
      location.location[axis] = @map[axis]
    else
      location.location[axis] = next_location
    end
  end

  private

  def direction_for(heading)
    @directions[heading.upcase.to_sym]
  end
end
