class Rover
  attr_reader :location
  def initialize(heading, x, y, plateau)
    @heading = heading
    @location = {:x => x, :y => y}
    @plateau = plateau
  end
  def heading
    @heading.class.name.downcase.to_sym
  end
  def rotate(degrees)
    @heading = @heading.rotate(degrees)
  end
  def forward
    @plateau.move_forward(@heading, @location)
  end
  def to_s
    "#{@location[:x]} #{@location[:y]} #{@heading}"
  end
end
