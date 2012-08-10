require 'spec_helper'

describe West do
  let(:sut){ West.new }

  context "when moving forward" do
    it "should move to the next position" do
      @location[:x].should == 0
    end
    before do
      @location = {:x => 1, :y => 0}
      sut.forward(@location)
    end
  end
  context "when turning right" do
    it "should face North" do
      sut.turn_right.should be_an_instance_of(North)
    end
  end
  context "when turning left" do
    it "should face South" do
      sut.turn_left.should be_an_instance_of(South)
    end
  end
end
