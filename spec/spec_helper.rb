require "rspec"
require "rspec-fakes"
require 'simplecov'
SimpleCov.start

Dir[File.dirname(__FILE__) + "/../lib/**/*.rb"].each do |file|
  require file
end
