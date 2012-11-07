require 'spec_helper'

describe West do
  let(:sut){ West.new }

  context "when moving forward" do
    let(:plateau) { Plateau.new(5, 5) }
    it "should move to the next position" do
      @location.current(:x).should == 0
    end
    before do
      @location = Location.new(1, 0, sut)
      sut.forward(@location, plateau)
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
  context "when displayed" do
    it "should display 'W'" do
      sut.to_s.should == 'W'
    end
  end
end
