class FilteredCommand
  def initialize(command, specification)
    @command = command
    @specification = specification
  end
  def run(item)
    @command.run if @specification.matches(item)
  end
end

