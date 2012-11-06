require 'spec_helper'

describe Location do
  let(:plateau) {Plateau.new(3,  3)}

  context "when moving forward" do
    context "when the next position is to far east" do
      it "should move to the other side of the board" do
        @location.current(:x).should == 0
        @location.current(:y).should == 0
      end
      before do
        @location = Location.new(3, 0, East.new)
        @location.forward(plateau)
      end
    end

    context "when the next position is to far west" do
      it "should move to the other side of the board" do
        @location.current(:x).should == 3
        @location.current(:y).should == 0
      end
      before do
        @location = Location.new(0, 0, West.new)
        @location.forward(plateau)
      end
    end

    context "when the next position is to far north" do
      it "should move to the other side of the board" do
        @location.current(:x).should == 0
        @location.current(:y).should == 0
      end
      before do
        @location = Location.new(0, 3, North.new)
        @location.forward(plateau)
      end
    end

    context "when the next position is to far south" do
      it "should move to the other side of the board" do
        @location.current(:x).should == 0
        @location.current(:y).should == 3
      end
      before do
        @location = Location.new( 0,  0, South.new)
        @location.forward(plateau)
      end
    end

    context "when the next position is just fine" do
      it "should move position forward" do
        @location.current(:x).should == 1
        @location.current(:y).should == 1
      end
      before do
        @location = Location.new( 1,  0, North.new)
        @location.forward(plateau)
      end
    end
  end
end
