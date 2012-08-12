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
  def rotate(degrees)
    puts "rotate #{degrees}"
    @heading = @heading.rotate(degrees)
  end
  def forward
    puts "move forward"
    @plateau.move_forward(@heading, @location)
  end
  def to_s
    "#{@location[:x]} #{@location[:y]} #{@heading}"
  end
end
