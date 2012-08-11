require "spec_helper"

describe North do
  let(:sut) { North.new }
  context "when moving forward" do
    it "should move to the next position" do
      @location[:y].should == 4
    end
    before do
      @location = {:x => 0, :y => 3}
      sut.forward(@location)
    end
  end
  context "when turning right" do
    it "should face east" do
      sut.turn_right.should be_an_instance_of(East)
    end
  end
  context "when turning left" do
    it "should face west" do
      sut.turn_left.should be_an_instance_of(West)
    end
  end
  context "when displayed" do
    it "should display 'N'" do
      sut.to_s.should == 'N'
    end
  end
end
