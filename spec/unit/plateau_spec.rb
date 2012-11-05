require 'spec_helper'

describe Plateau do
  let(:sut) {Plateau.new(3,  3)}

  context "when moving forward" do
    context "when the next position is to far east" do
      it "should move to the other side of the board" do
        @location.location[:x].should == 0
        @location.location[:y].should == 0
      end
      before do
        @location = Location.new(3, 0, East.new)
        sut.move_forward(@location)
      end
    end

    context "when the next position is to far west" do
      it "should move to the other side of the board" do
        @location.location[:x].should == 3
        @location.location[:y].should == 0
      end
      before do
        @location = Location.new(0, 0, West.new)
        sut.move_forward(@location)
      end
    end

    context "when the next position is to far north" do
      it "should move to the other side of the board" do
        @location.location[:x].should == 0
        @location.location[:y].should == 0
      end
      before do
        @location = Location.new(0, 3, North.new)
        sut.move_forward(@location)
      end
    end

    context "when the next position is to far south" do
      it "should move to the other side of the board" do
        @location.location[:x].should == 0
        @location.location[:y].should == 3
      end
      before do
        @location = Location.new( 0,  0, South.new)
        sut.move_forward(@location)
      end
    end

    context "when the next position is just fine" do
      it "should move position forward" do
        @location.location[:x].should == 1
        @location.location[:y].should == 1
      end
      before do
        @location = Location.new( 1,  0, North.new)
        sut.move_forward(@location)
      end
    end
  end
end
