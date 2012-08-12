class Rover
  attr_reader :location
  def initialize(heading, coordinates, plateau)
    @heading = heading
    @location = coordinates
    @plateau = plateau
  end
  def heading
    @heading.class.name.downcase.to_sym
  end
  def turn(direction)
    @heading = direction.turn_from(@heading)
  end
  def forward
    @plateau.move_forward(@heading, @location)
  end
  def to_s
    "#{@location[:x]} #{@location[:y]} #{@heading}"
  end
end
