#!/usr/bin/ruby
require 'east'
require 'north'
require 'rover'
require 'south'
require 'terrain'
require 'west'

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
edge = gets.split(' ')
terrain = Terrain.new({:x => edge[0].to_i, :y => edge[1].to_i})

puts "enter landing coordinates:"
landing = gets
rover = Rover.new(get_heading(landing.split(" ")[2]), {:x => landing.split(" ")[0].to_i, :y => landing.split(" ")[1].to_i})

puts "enter instructions:"
gets.split(//).each do |instruction|
  puts instruction
  case(instruction)
  when 'M'
    rover.move_forward(terrain)
  when 'R'
    rover.turn_right
  when 'L'
    rover.turn_left
  end
end

puts "final location: #{rover}"
