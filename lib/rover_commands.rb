class RCommand
  def run(rover)
    rover.extend(Rotation)
    rover.turn_right
  end
end
class LCommand
  def run(rover)
    rover.extend(Rotation)
    rover.turn_left
  end
end
class MCommand
  def run(rover)
    rover.drive
  end
end
