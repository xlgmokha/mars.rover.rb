class TurnLeft
  def initialize(rover)
    @rover = rover
  end
  def run(instruction)
    if matches(instruction)
      @rover.rotate(-90) 
    end
  end
  def matches(item)
    'L' == item
  end
end
