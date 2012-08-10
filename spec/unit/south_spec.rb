require 'spec_helper'

describe South do
  let(:sut) { South.new }
  context "when driving forward" do
    it "should move forward" do
      @location[:y].should == 0
    end
    before do
      @location = {:x => 0, :y => 1}
      sut.forward(@location)
    end
  end
  context "when turning left" do
    it "should face east" do
      sut.turn_left.should be_an_instance_of(East)
    end
  end
  context "when turning right" do
    it "should face west" do
      sut.turn_right.should be_an_instance_of(West)
    end
  end
end
