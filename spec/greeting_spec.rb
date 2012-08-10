require "spec_helper"

class Greeting
  def say(message)
    message
  end
end

describe Greeting do
  context "when greeting someone" do
    it "should say hello" do
      Greeting.new.say("hello").should == "hello"
    end
  end
end
