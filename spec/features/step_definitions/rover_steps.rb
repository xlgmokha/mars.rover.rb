$:.unshift(File.dirname(__FILE__) + '/../../')
require 'spec_helper'

Before do
end

After do
end

Given /the terrain is (.*) by (.*)/ do |x,y|
  @rover = Rover.new
end
When /the starting position is '1 2 N'/ do

end
When /I move 'LMLMLMLMM'/ do

end
Then /the result should be '1 3 N' on the screen/ do

end

When /I press play/ do |op|
  puts 'blah'
end


#Before do
#@calc = Calculator.new
#end

#After do
#end

#Given /I have entered (\d+) into the calculator/ do |n|
#@calc.push n.to_i
#end

#When /I press (\w+)/ do |op|
#@result = @calc.send op
#end

#Then /the result should be (.*) on the screen/ do |result|
#@result.should == result.to_f
#end
