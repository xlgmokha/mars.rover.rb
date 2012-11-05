class TurnRight
  def initialize(rover)
    @rover = rover
  end
  def run(instruction)
    @rover.rotate(90) if matches(instruction)
  end
  def matches(item)
    'R' == item
  end
end
