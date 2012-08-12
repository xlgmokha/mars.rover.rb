require "rover"
require "north"
require "east"
require "west"
require "south"

class Plateau
  def initialize(x,y)
    @map = {:x => x, :y => y}
    @directions = {:N => North.new, :E => East.new, :W => West.new, :S => South.new}
  end

  def move_forward( heading, location)
    new_location = heading.forward(location.clone)

    if(new_location[:x] > @map[:x])
      location[:x] = new_location[:x] - @map[:x]
    elsif (new_location[:x] < 0)
      location[:x] = @map[:x]
    else
      location[:x] = new_location[:x]
    end

    if(new_location[:y] > @map[:y])
      location[:y] = new_location[:y] - @map[:y]
    elsif (new_location[:y] < 0)
      location[:y] = @map[:y]
    else
      location[:y] = new_location[:y]
    end
  end

  def deploy_rover_to(heading, x, y)
    Rover.new(@directions[heading.to_sym], {:x => x, :y => y}, self)
  end
end
