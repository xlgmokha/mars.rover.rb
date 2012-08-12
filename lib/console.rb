require 'navigate_rover'

class Console
  def initialize(input, output)
    @input = input
    @output = output
  end
  def run
    edge = ask('enter size of terrain:')
    landing = ask('enter landing coordinate:')
    instructions = ask('enter instructions:')

    command = NavigateRover.new(edge, landing, instructions)
    @output.puts "final location: #{command.run}"
  end

  def ask(message)
    @output.puts message
    @output.print '> '
    @input.gets
  end
end
