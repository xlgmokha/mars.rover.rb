#!/usr/bin/ruby
require "console"

begin
  Console.new(STDIN, STDOUT).run
rescue Exception => e
  puts e
  return 1
end

exit 0

