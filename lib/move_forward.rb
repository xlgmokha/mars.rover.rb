class MoveForward
  def initialize(rover)
    @rover = rover
  end
  def run
    @rover.drive
  end
end

class FilteredCommand
  def initialize(command, specification)
    @command = command
    @specification = specification
  end
  def run(item)
    @command.run if @specification.matches(item)
  end
end

class Specification
  def initialize(criteria)
    @criteria = criteria
  end
  def matches(item)
    @criteria.call(item)
  end
end
