class TurnLeft
  def initialize(rover)
    @rover = rover
  end
  def run(instruction)
    @rover.rotate(-90) if matches(instruction)
  end
  def matches(item)
    'L' == item
  end
end
