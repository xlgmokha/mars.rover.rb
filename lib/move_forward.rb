class MoveForward
  def initialize(rover)
    @rover = rover
  end
  def run(instruction)
    if matches(instruction)
      @rover.drive
    end
  end
  def matches(item)
    'M' == item.upcase
  end
end
