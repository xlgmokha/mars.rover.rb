$:.unshift(File.dirname(__FILE__) + '/../..')
require 'spec_helper'

Given /^the plateau is (\d+) by (\d+)$/ do |x,y|
  @plateau = "#{x} #{y}"
end

Given /^the starting position is '(.*)'$/ do |input|
  @rover = input
end

Given /^I move "([^\"]*)"$/ do |instructions|
  @instructions = instructions
end

When /^I tell the rover to travel$/ do
  @command = NavigateRover.new(@plateau, @rover, @instructions)
end

Then /^the rovers final position should be '(.*)' on the screen\.$/ do |expected|
  @command.run.should == expected
end
