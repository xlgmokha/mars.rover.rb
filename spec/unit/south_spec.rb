require 'spec_helper'

describe South do
  let(:sut) { South.new }
  context "when driving forward" do
    let(:plateau) { Plateau.new(5, 5) }
    it "should move forward" do
      @location.location[:y].should == 0
    end
    before do
      @location = Location.new(0, 1, sut)
      sut.forward(@location, plateau)
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
  context "when displayed" do
    it "should display 'S'" do
      sut.to_s.should == 'S'
    end
  end
end
