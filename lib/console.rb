require 'heading'
require 'rotation'
Dir[File.dirname(__FILE__) + "/**/*.rb"].each do |file|
  require file
end

class Console
  def initialize(input, output, processor = CommandProcessor.new)
    @input = input
    @output = output
    @processor = processor
  end

  def run
    queue_commands_for(ask('enter size of plateau:'))
    @processor.run
  end

  private

  def ask(message)
    @output.puts message
    @output.print '> '
    @input.gets.chomp!
  end

  def create_command_for(plateau, landing)
    intercept(NavigateRover.new(plateau, landing, ask('enter instructions:')))
  end

  def intercept(command)
    Interceptor.new(command, method(:write_to_console))
  end

  def write_to_console(command)
    @output.puts "#{command.run}"
  end

  def queue_commands_for(plateau)
    while ((landing = ask('enter landing coordinate (q to quit):')) != 'q') do
      @processor.add(create_command_for(plateau, landing))
    end
  end
end
