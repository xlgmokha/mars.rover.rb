require 'navigate_rover'
require "command_processor"

class Console
  def initialize(input, output, processor = CommandProcessor.new)
    @input = input
    @output = output
    @processor = processor
  end
  def run
    plateau = ask('enter size of plateau:')

    while ((landing = ask('enter landing coordinate (q to quit):')) != 'q') do
      @processor.add(create_command_for(plateau, landing))
    end

    @processor.run
  end

  private

  def ask(message)
    @output.puts message
    @output.print '> '
    @input.gets.chomp!
  end

  def create_command_for(plateau, landing)
    OutputResult.new(NavigateRover.new(plateau, landing, ask('enter instructions:')), @output)
  end
end

class OutputResult
  def initialize(command, output)
    @command = command
    @output = output
  end
  def run
    @output.puts "#{@command.run}"
  end
end
