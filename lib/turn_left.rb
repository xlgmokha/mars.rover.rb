class TurnLeft
  def initialize(rover)
    @rover = rover
  end
  def run
    @rover.rotate(-90)
  end
end
