class MoveForward
  def initialize(rover)
    @rover = rover
  end
  def run(instruction)
    if matches(instruction)
      @rover.forward
    end
  end
  def matches(item)
    'M' == item
  end
end
