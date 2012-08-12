require 'navigate_rover'
require "command_processor"

class Console
  def initialize(input, output)
    @input = input
    @output = output
    @processor = CommandProcessor.new
  end
  def run
    plateau = ask('enter size of plateau:')

    while ((landing = ask('enter landing coordinate (q to quit):')) != 'q') do
      command = NavigateRover.new(plateau, landing, ask('enter instructions:'))
      @processor.add(command)
    end

    @output.puts "#{@processor.run}"
  end

  private

  def ask(message)
    @output.puts message
    @output.print '> '
    @input.gets.chomp!
  end
end
