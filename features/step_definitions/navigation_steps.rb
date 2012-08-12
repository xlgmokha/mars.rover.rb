$:.unshift(File.dirname(__FILE__) + '/../../spec')
require 'spec_helper'

Given /the plateau is (\d+) by (\d+)/ do |x,y|
  @plateau = "#{x} #{y}"
end

Given "the starting position is '(\d+) (\d+) (.*)'" do |x,y, heading|
  @rover = "#{x} #{y} #{heading}"
end

Given /I move '(.*)'/ do |instructions|
  @instructions = instructions
end

When /I tell the rover to travel/ do |op|
  @command = NavigateRover.new(@plateau, @landing, @instructions)
end

Then /the result should be '1 3 N' on the screen/ do
  @command.run.should == '1 3 N'
end
