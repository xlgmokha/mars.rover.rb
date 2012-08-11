$:.unshift(File.dirname(__FILE__) + '/../../spec')
require 'spec_helper'

Given /^the terrain is (.*) by (.*)$/ do |x,y|
  @rover = Rover.new
end
Given "the starting position is '1 2 N'" do

end
Given /I move 'LMLMLMLMM'/ do

end
Then /the result should be '1 3 N' on the screen/ do

end

When /I press play/ do |op|
  puts 'blah'
end
