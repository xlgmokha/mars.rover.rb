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

  def move_forward( heading, location)
    new_location = heading.forward(location.clone)

    adjust(location, new_location, :x)
    adjust(location, new_location, :y)
  end

  def deploy_rover_to(heading, x, y)
    Rover.new(@directions[heading.to_sym],  x,  y, self)
  end

  private 
  def adjust(location, new_location, axis)
    if(new_location[axis] > @map[axis])
      location[axis] = new_location[axis] - @map[axis]
    elsif (new_location[axis] < 0)
      location[axis] = @map[axis]
    else
      location[axis] = new_location[axis]
    end
  end
end
