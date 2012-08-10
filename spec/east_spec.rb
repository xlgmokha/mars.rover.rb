require 'spec_helper'

describe East do
  let(:sut){ East.new }

  context "when moving forward" do
    it "should move to the next position" do
      @location[:x].should == 1
    end
    before do
      @location = {:x => 0, :y => 0}
      sut.forward(@location)
    end
  end
  context "when turning right" do
    it "should face South" do
      sut.turn_right.should be_an_instance_of(South)
    end
  end
end
