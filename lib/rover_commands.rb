class RCommand
  def run(rover)
    rover.rotate(90)
  end
end
class LCommand
  def run(rover)
    rover.rotate(-90)
  end
end
class MCommand
  def run(rover)
    rover.drive
  end
end
