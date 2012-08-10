class Rover
  attr_reader :location
  def initialize(heading, coordinates)
    @heading = heading
    @location = coordinates
    puts coordinates
  end
  def heading
    @heading.class.name.downcase.to_sym
  end
  def turn_right
    @heading = @heading.turn_right
  end
  def turn_left
    @heading = @heading.turn_left
  end
  def move_forward(terrain)
    terrain.move_forward(@heading, @location)
  end
end

