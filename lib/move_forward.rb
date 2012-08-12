class MoveForward
  def initialize(rover)
    @rover = rover
  end
  def run(instruction)
    @rover.forward if matches(instruction)
  end
  def matches(item)
    'M' == item
  end
end
