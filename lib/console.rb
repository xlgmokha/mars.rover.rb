require 'terrain'
require 'rover'
require 'north'
require 'east'
require 'west'
require 'south'

class Console
  def initialize(input, output)
    @input = input
    @output = output
  end
  def run
    edge = ask('enter size of terrain:', ' ')
    terrain = Terrain.new({:x => edge[0].to_i, :y => edge[1].to_i})

    landing = ask('enter landing coordinate:', ' ')
    rover = terrain.deploy_rover_to(landing[2], {:x => landing[0].to_i, :y => landing[1].to_i})

    ask('enter instructions:', //).each do |instruction|
      case(instruction)
      when 'M'
        rover.move_forward(terrain)
      when 'R'
        rover.turn_right
      when 'L'
        rover.turn_left
      end
    end

    @output.puts "final location: #{rover}"
  end

  def ask(message, split)
    @output.puts message
    @output.print '> '
    @input.gets.split(split)
  end
end
