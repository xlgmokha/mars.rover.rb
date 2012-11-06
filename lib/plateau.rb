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

  def deploy_rover_to(heading, x, y)
    Rover.new(direction_for(heading),  x,  y, self)
  end

  def increment(axis, location)
    location.increment(axis, @map)
  end

  def decrement(axis, location)
    location.decrement(axis, @map)
  end

  private

  def direction_for(heading)
    @directions[heading.upcase.to_sym]
  end
end
