class Location
  attr_reader :location, :heading

  def initialize(x, y, heading)
    @location = {:x => x, :y => y}
    @heading = heading
  end

  def forward(plateau)
    @heading.forward(self, plateau)
  end

  def rotate(degrees)
    @heading = @heading.rotate(degrees)
  end

  def is_facing(direction)
    @heading.represents? direction
  end

  def to_s
    "#{@location[:x]} #{@location[:y]} #{@heading}"
  end
end
