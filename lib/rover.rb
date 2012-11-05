require 'location'
class Rover
  def initialize(heading, x, y, plateau)
    @plateau = plateau
    @location = Location.new(x, y, heading)
  end

  def rotate(degrees)
    @location.rotate(degrees)
  end

  def drive
    @location.forward(@plateau)
  end

  def is_facing(direction)
    @location.is_facing(direction)
  end

  def to_s
    @location.to_s
  end
end
