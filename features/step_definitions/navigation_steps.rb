$:.unshift(File.dirname(__FILE__) + '/../../spec')
require 'spec_helper'

Given /the plateau is (\d+) by (\d+)/ do |x,y|
  @terrain = Terrain.new({:x => x, :y => y})
end

Given "the starting position is '(\d+) (\d+) N'" do |x,y|
  @rover = @terrain.deploy_rover_to('N', {:x => x, :y => y})
end

Given /I move '(.*)'/ do |instructions|
  instructions.split(//).each do |instruction|
    case(instruction)
    when 'M'
      @rover.move_forward(terrain)
    when 'R'
      @rover.turn_right
    when 'L'
      @rover.turn_left
    end
  end
end

When /I tell the rover to travel/ do |op|
end

Then /the result should be '1 3 N' on the screen/ do
  @rover.to_s.should == '1 3 N'
end
