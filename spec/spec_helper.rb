require "rspec"
require "rspec-fakes"

Dir[File.dirname(__FILE__) + "/../lib/**/*.rb"].each do |file|
  require file
end
