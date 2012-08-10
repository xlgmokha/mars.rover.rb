#!/usr/bin/ruby
require 'terrain'

def get_heading(pneumonic)
  case(pneumonic)
  when 'N'
    North.new
  when 'E'
    East.new
  when 'W'
    West.new
  when 'S'
    South.new
  end
end

puts "enter size of terrain:"
terrain = gets

puts "enter landing coordinates:"
landing = gets

puts "enter instructions:"
instructions = gets

coordinates = terrain.split(" ")
terrain = Terrain.new({:x => coordinates[0], :y => coordinates[1]})

heading = get_heading( landing.split(" ")[2])
location = {:x => landing.split(" ")[0], :y => landing.split(" ")[1]}

instructions.each do |instruction|

end
