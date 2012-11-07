require "rspec"
require "rspec-fakes"
require 'simplecov'
SimpleCov.start

require 'rotation'
Dir[File.dirname(__FILE__) + "/../lib/**/*.rb"].each do |file|
  require file
end
