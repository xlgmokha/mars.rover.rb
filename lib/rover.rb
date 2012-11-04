class Rover
  def initialize(heading, x, y, plateau)
    @heading = heading
    @plateau = plateau
    @location = Location.new(x, y, heading)
  end
  def heading
    @heading.class.name.downcase.to_sym
  end
  def rotate(degrees)
    @heading = @heading.rotate(degrees)
  end
  def forward
    @plateau.move_forward(@heading, @location.location)
  end
  def location
    @location.location
  end
  def to_s
    @location.to_s
  end
end
class Location
  attr_reader :location
  def initialize(x, y, heading)
    @location = {:x => x, :y => y}
    @heading =heading
  end
  def to_s
    "#{@location[:x]} #{@location[:y]} #{@heading}"
  end
end
