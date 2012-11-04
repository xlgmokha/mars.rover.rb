class Rover
  def initialize(heading, x, y, plateau)
    @plateau = plateau
    @location = Location.new(x, y, heading)
  end
  def heading
    @location.heading.class.name.downcase.to_sym
  end
  def rotate(degrees)
    @location.rotate(degrees)
  end
  def forward
    @plateau.move_forward(@location.heading, @location.location)
  end
  def location
    @location.location
  end
  def to_s
    @location.to_s
  end
end

class Location
  attr_reader :location, :heading
  def initialize(x, y, heading)
    @location = {:x => x, :y => y}
    @heading = heading
  end
  def rotate(degrees)
    @heading = @heading.rotate(degrees)
  end
  def to_s
    "#{@location[:x]} #{@location[:y]} #{@heading}"
  end
end
