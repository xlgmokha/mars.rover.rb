require 'spec_helper'

describe East do
  let(:sut){ East.new }

  context "when moving forward" do
    let(:plateau) { Plateau.new(5, 5) }
    it "should move to the next position" do
      @location.current(:x).should == 1
    end
    before do
      @location = Location.new(0, 0, sut)
      sut.forward(@location, plateau)
    end
  end
  context "when turning right" do
    it "should face South" do
      sut.rotate(90).should be_an_instance_of(South)
    end
  end
  context "when turning left" do
    it "should face North" do
      sut.rotate(-90).should be_an_instance_of(North)
    end
  end
  context "when displayed" do
    it "should display 'E'" do
      sut.to_s.should == 'E'
    end
  end
end
