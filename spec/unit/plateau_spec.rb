require 'spec_helper'

describe Plateau do
  let(:sut) {Plateau.new(3,  3)}

  context "when moving forward" do
    context "when the next position is to far east" do
      it "should move to the other side of the board" do
        @location[:x].should == 1
        @location[:y].should == 0
      end
      before do
        @heading = fake
        @location = {:x => 3, :y => 0}
        @heading.stub(:forward).with(@location).and_return({:x => 4, :y => 0})

        sut.move_forward(@heading, @location)
      end
    end

    context "when the next position is to far west" do
      it "should move to the other side of the board" do
        @location[:x].should == 3
        @location[:y].should == 0
      end
      before do
        @heading = fake
        @location = {:x => 0, :y => 0}
        @heading.stub(:forward).with(@location).and_return({:x => -1, :y => 0})
        sut.move_forward(@heading, @location)
      end
    end

    context "when the next position is to far north" do
      it "should move to the other side of the board" do
        @location[:x].should == 0
        @location[:y].should == 1
      end
      before do
        @heading = fake
        @location = {:x => 0, :y => 3}
        @heading.stub(:forward).with(@location).and_return({:x => 0, :y => 4})
        sut.move_forward(@heading, @location)
      end
    end

    context "when the next position is to far south" do
      it "should move to the other side of the board" do
        @location[:x].should == 0
        @location[:y].should == 3
      end
      before do
        @heading = fake
        @location = {:x => 0, :y => 0}
        @heading.stub(:forward).with(@location).and_return({:x => 0, :y => -1})
        sut.move_forward(@heading, @location)
      end
    end

    context "when the next position is just fine" do
      it "should move position forward" do
        @location[:x].should == 1
        @location[:y].should == 1
      end
      before do
        @heading = fake
        @location = {:x => 0, :y => 0}
        @heading.stub(:forward).with(@location).and_return({:x => 1, :y => 1})
        sut.move_forward(@heading, @location)
      end
    end
  end
end
