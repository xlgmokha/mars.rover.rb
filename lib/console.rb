require 'navigate_rover'

class Console
  def initialize(input, output)
    @input = input
    @output = output
  end
  def run
    plateau = ask('enter size of plateau:')

    @output.puts "#{create(plateau).run}"
  end

  private

  def ask(message)
    @output.puts message
    @output.print '> '
    @input.gets
  end

  def create(plateau)
    NavigateRover.new(plateau, ask('enter landing coordinate:'), ask('enter instructions:'))
  end
end
